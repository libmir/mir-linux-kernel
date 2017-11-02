#!/usr/bin/env python
"""
Usage: python getsys_calls.py <all | specific architectures...>

Generate the "source/mir/linux/arch/<arch>/uapi/_asm/unistd.d' files by
this command in the containing folder. You will need to be connected
to the internet. Architecture names are written exactly as corresponding
version specifiers in the D programming language (see
https://dlang.org/spec/version.html).

If you get an error message like:
    ModuleNotFoundError: No module named 'urllib2'
then "pip install urllib2".

Report bugs at https://github.com/libmir/mir-linux-kernel/issues
"""
from __future__ import print_function
import os, sys
import urllib2, re
import datetime
from io import BytesIO
from gzip import GzipFile

LINUX_ARCH_URL = "https://raw.githubusercontent.com/torvalds/linux/master/arch/"

syscall_table_urls = {
# The format is:
# <number> <abi> <name> <entry point> <compat entry point>
	"X86": LINUX_ARCH_URL+"x86/entry/syscalls/syscall_32.tbl",
# The format is:
# <number> <abi> <name> <entry point>
#The abi is "common", "64" or "x32" for this file.
	"X86_64": LINUX_ARCH_URL+"x86/entry/syscalls/syscall_64.tbl",
# The format is:
# <num>	<abi>	<name>			[<entry point>			[<oabi compat entry point>]]
#
# Where abi is:
#  common - for system calls shared between oabi and eabi (may have compat)
#  oabi   - for oabi-only system calls (may have compat)
#  eabi   - for eabi-only system calls
#
# For each syscall number, "common" is mutually exclusive with oabi and eabi
	"ARM": LINUX_ARCH_URL+"arm/tools/syscall.tbl"
}

syscall_32_64_urls = {
	"SPARC": ("sparc/include/uapi/asm/unistd.h","__32bit_syscall_numbers__","__64bit_syscall_numbers__"),
	"SPARC64": ("sparc/include/uapi/asm/unistd.h","__32bit_syscall_numbers__","__64bit_syscall_numbers__"),
	"PPC": ("powerpc/include/uapi/asm/unistd.h","__powerpc32__","__powerpc64__"),
	"PPC64": ("powerpc/include/uapi/asm/unistd.h","__powerpc32__","__powerpc64__"),
	"S390": ("s390/include/uapi/asm/unistd.h","__32bit_syscall_numbers__","__s390x__"),#"__32bit_syscall_numbers__" is not real
	#For D versions, "S390x" has been deprecated in favor of "SystemZ".
	"SystemZ": ("s390/include/uapi/asm/unistd.h","__32bit_syscall_numbers__","__s390x__"),#"__32bit_syscall_numbers__" is not real
}

non_standard_syscall_urls = {
	"HPPA": "parisc/include/uapi/asm/unistd.h",
	"HPPA64": "parisc/include/uapi/asm/unistd.h"
}

def read_url(url, headers=None):
	if headers is None:
		headers = {}
	if not "Accept-Encoding" in headers:
		headers["Accept-Encoding"] = "gzip"
	response = None
	try:
		response = urllib2.build_opener().open(
				urllib2.Request(url, headers=headers))
		if response.info().get("Content-Encoding") == "gzip":
				return GzipFile(fileobj=BytesIO(response.read())).read()
		else:
				return response.read()
	except:
		print ("Error trying to read "+url)
		raise
	finally:
		if response is not None:
			response.close()

def iter_syscall_table(arch):
	"""KeyError if syscall table is unavailable for arch"""
	for line in read_url(syscall_table_urls[arch]).splitlines():
		line = line.partition('#')[0].strip()
		if len(line) > 0:
			yield(line.split(None, 4))

def iter_unistd_h(path_from_arch):
	import re
	text = read_url(LINUX_ARCH_URL+path_from_arch)
	text = re.sub(r"/[*].*?[*]/", "", text, re.DOTALL)#Remove C-style comments
	text = text.splitlines()
	for line in text:
		line = line.partition("//")[0].partition("#define")[2].strip()
		if len(line) > 0:
			yield line.split(None, 1)

def iter_unistd_h_32_64(path_from_arch, symbol32, symbol64):
	import re
	text = read_url(LINUX_ARCH_URL+path_from_arch)
	text = re.sub(r"/[*].*?[*]/", "", text, re.DOTALL)#Remove C-style comments
	text = text.splitlines()
	care_level = -1
	nest_level = 0
	mode = None
	for line in text:
		line = line.strip()
		if len(line) > 0:
			line = line.split(None, 2)
			if line[0] == "#ifdef" and (line[1] == symbol32 or line[1] == symbol64):
				if mode is not None:
					ValueError("#ifdef nesting problem!")
				if line[1] == symbol32:
					mode = 32
				else:
					mode = 64
				care_level = nest_level
				nest_level += 1
				continue
			elif line[0] == "#ifndef" and (line[1] == symbol32 or line[1] == symbol64):
				if mode is not None:
					ValueError("#ifdef nesting problem!")
				if line[1] == symbol32:
					mode = 64
				else:
					mode = 32
				care_level = nest_level
				nest_level += 1
				continue
			elif line[0] == "#ifdef" or line[0] == "#ifndef":
				nest_level += 1
				continue
			elif line[0] == "#else":
				if mode == 32:
					mode = 64
				elif mode == 64:
					mode = 32
				continue
			elif line[0] == "#endif":
				nest_level -= 1
				if nest_level == care_level:
					mode = None
					care_level = -1
			elif line[0] == "#define":
				if len(line) == 2:
					yield (line[1], None, mode)
				else:
					yield (line[1], line[2], mode)

def iter_unistd_h_section(path_from_arch, start_line, end_line):
	import re
	text = read_url(LINUX_ARCH_URL+path_from_arch)
	text = re.sub(r"/[*].*?[*]/", "", text, re.DOTALL)#Remove C-style comments
	text = text.splitlines()
	seeking = True
	for line in text:
		if seeking:
			if line.startswith(start_line):
				seeking = False
		else:
			if line.startswith(end_line):
				break
			else:
				line = line.partition("//")[0].partition("#define")[2].strip()
				if len(line) > 0:
					yield line.split(None, 1)

def _yield_nr_defs_unistd_helper(lines):#Each line is tuple
	for line in lines:
		try:
			if line[0].startswith("__NR"):
				yield "enum "+line[0].lstrip("_")+" = "+line[1].replace("__NR","NR")+";"
		except:
			yield "// omitted " + " ".join(line)

def _yield_nr_defs_unistd_helper_32_64(lines):#Each line is tuple
	for line in lines:
		try:
			if line[0].startswith("__NR"):
				if line[2] is None:
					yield "enum "+line[0].lstrip('_')+" = "+line[1].replace("__NR","NR")+";"
				elif line[2] == 32:
					yield "static if (size_t.sizeof == 4) enum "+line[0].lstrip("_")+" = "+line[1].replace("__NR","NR")+";"
				elif line[2] == 64:
					yield "static if (size_t.sizeof == 8) enum "+line[0].lstrip("_")+" = "+line[1].replace("__NR","NR")+";"
				else:
					raise Exception("bad mode in line: "+str(line))
		except:
			line = "// omitted " + " ".join(line)

def yield_nr_defs(arch):
	if arch == "X86_64":
		for line in iter_syscall_table("X86_64"):
			try:
				if line[1] == "64":
					yield "static if (size_t.sizeof == 8) enum NR_"+line[2]+" = "+str(int(line[0]))+";"
				elif line[1] == "x32":#i.e. for x32 ABI
					yield "version (D_X32) enum NR_"+line[2]+" = "+str(int(line[0]))+";"
				else:
					yield "enum NR_"+line[2]+" = "+str(int(line[0]))+";"
			except:
				yield "// omitted " + " ".join(line);
	elif arch in syscall_table_urls:
		for line in iter_syscall_table(arch):
			try:
				yield "enum NR_"+line[2]+" = "+str(int(line[0]))+";"
			except:
				yield "// omitted " + " ".join(line);
	elif arch in syscall_32_64_urls:
		url, symbol32, symbol64 = syscall_32_64_urls[arch]
		for line in _yield_nr_defs_unistd_helper_32_64(iter_unistd_h_32_64(url, symbol32, symbol64)):
			yield line
	elif arch in ("MIPS_O32","MIPS_N32","MIPS64"):
		#Filter to just include one section of the include file.
		url = "mips/include/uapi/asm/unistd.h"
		if arch == "MIPS_O32":
			start_line = "#if _MIPS_SIM == _MIPS_SIM_ABI32"
		elif arch == "MIPS_N32":
			start_line = "#if _MIPS_SIM == _MIPS_SIM_NABI32"
		elif arch == "MIPS64":
			start_line = "#if _MIPS_SIM == _MIPS_SIM_ABI64"#Not a mistake, "32" is arbitrary.
		else:
			raise Exception("Programming error! Couldn't find code for MIPS version!")
		end_line = "#endif"
		for line in iter_unistd_h_section(url, start_line, end_line):
			try:
				if line[0].startswith("__NR"):
					yield "enum "+line[0].lstrip('_')+" = "+line[1].replace("__NR","NR")+";"
			except:
				yield "// omitted " + " ".join(line)
	elif arch == "SH":#SuperH
		#32-bit
		for line in iter_unistd_h(arch.lower()+"/include/uapi/asm/unistd_32.h"):
			try:
				if line[0].startswith("__NR"):
					yield "static if (size_t.sizeof == 4) enum "+line[0].lstrip("_")+" = "+line[1].replace("__NR","NR")+";"
			except:
				yield "// omitted " + " ".join(line)
		#64-bit
		for line in iter_unistd_h(arch.lower()+"/include/uapi/asm/unistd_64.h"):
			try:
				if line[0].startswith("__NR"):
					yield "static if (size_t.sizeof == 8) enum "+line[0].lstrip("_")+" = "+line[1].replace("__NR","NR")+";"
			except:
				yield "// omitted " + " ".join(line)
	elif arch in non_standard_syscall_urls:
		for line in _yield_nr_defs_unistd_helper(iter_unistd_h(non_standard_syscall_urls[arch])):
			yield line
	elif arch == "AArch64":
		yield "public import mir.linux.arch.asm_generic.unistd;"
	else:
		for line in _yield_nr_defs_unistd_helper(iter_unistd_h(arch.lower()+"/include/uapi/asm/unistd.h")):
			yield line

def write_nr_defs_file(arch):
	#We might immediately get an web error.
	#Don't create an empty file / erase the existing file if so.
	lines = yield_nr_defs(arch)
	mname = "mir.linux.arch."+arch.lower()+".uapi._asm.unistd"
	fdir = "source/mir/linux/arch/"+arch.lower()+"/uapi/_asm"
	fpath = fdir + "/unistd.d"
	print ("Writing "+fpath)
	try:
		os.makedirs(fdir)
	except:
		#Error can either mean failure or the directory
		#already existed.
		pass
	with open(fpath, "w") as f:
		f.write("/++\nAuto-generated Linux syscall constants for "+arch+"\n+/\nmodule ")
		f.write(mname+";\nversion(LDC) pragma(LDC_no_moduleinfo);\n\n")
		for line in lines:
			if line.startswith("// omitted "):
				print(line)
			f.write(line)
			f.write('\n')
	return mname

if __name__ == "__main__":
	argv = sys.argv[1:]
	if len(argv) == 1 and argv[0].lower() == "all":
		argv = ["X86","X86_64","ARM","AArch64","SPARC","SPARC64","Alpha",
				"IA64","PPC","PPC64","SH","S390","SystemZ","HPPA","HPPA64",
				"MIPS_O32","MIPS_N32","MIPS64"]
	if len(argv) == 0 or len([x for x in argv if x.startswith('-')]) > 0:
		print (__doc__)
		sys.exit(2)
	arch_modules = []
	for arg in argv:
		arch_modules.append((arg, write_nr_defs_file(arg)))
	mname = "mir.linux._asm.unistd"
	fdir = "source/mir/linux/_asm"
	fpath = fdir+"/unistd.d"
	try:
		os.makedirs(fdir)
	except:
		#Error can either mean failure or the directory
		#already existed.
		pass
	print ("Writing "+fpath)
	with open(fpath, "w") as f:
		f.write("/++\nAuto-generated Linux syscall constants\n+/\nmodule "+mname+";\n")
		f.write("version(LDC) pragma(LDC_no_moduleinfo);\n\n")
		first = True
		for (arch, mname) in arch_modules:
			if first:
				first = False
				f.write("version ("+arch+") public import "+mname+";\n")
			else:
				f.write("else version ("+arch+") public import "+mname+";\n")
		f.write("else pragma(msg, \"Linux syscall constants not known for target architecture!\");\n")
