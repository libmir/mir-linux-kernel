#!/usr/bin/env python
"""
Usage: python get_syscalls.py <all | specific architectures...>

Generate the "source/mir/linux/arch/<arch>/uapi/_asm/unistd.di' files by
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
# The format of the remote tables is:
# <number> <abi> <name> <entry point> <compat entry point>
# The format of this dict is:
# "Architecture": ["path/from/arch/to/the.tbl", ["accepted ABI", "more accepted ABIs"], <NR offset>]
# <NR offset> can be omitted in which case it is treated as 0.
	"X86": ["x86/entry/syscalls/syscall_32.tbl", ["i386"]],
	"X86_64": ["x86/entry/syscalls/syscall_64.tbl", ["common","64","x32"]], # x32 ABI is handled specially.
	"ARM": ["arm/tools/syscall.tbl", ["common", "oabi"]],
	"Alpha": ["alpha/kernel/syscalls/syscall.tbl", ["common"]],
	"HPPA": ["parisc/kernel/syscalls/syscall.tbl", ["common", "32"]],
	"HPPA64": ["parisc/kernel/syscalls/syscall.tbl", ["common", "64"]],
	"IA64": ["ia64/kernel/syscalls/syscall.tbl", ["common"], 1024],
	"MIPS_N32": ["mips/kernel/syscalls/syscall_n32.tbl", ["n32"], 6000],
	"MIPS_O32": ["mips/kernel/syscalls/syscall_o32.tbl", ["o32"], 4000],
	"MIPS64": ["mips/kernel/syscalls/syscall_n64.tbl", ["n64"], 5000],
	"PPC": ["powerpc/kernel/syscalls/syscall.tbl", ["common", "32", "nospu"]],
	"PPC64": ["powerpc/kernel/syscalls/syscall.tbl", ["common", "64", "nospu"]],
	"S390": ["s390/kernel/syscalls/syscall.tbl", ["common", "32"]],
	"SH": ["sh/kernel/syscalls/syscall.tbl", ["common"]],
	"SPARC": ["sparc/kernel/syscalls/syscall.tbl", ["common", "32"]],
	"SPARC64": ["sparc/kernel/syscalls/syscall.tbl", ["common", "64"]],
	"SystemZ": ["s390/kernel/syscalls/syscall.tbl", ["common", "64"]],
}

uses_asm_generic_unistd = {
	# Value is header that may include additional defines.
	"AArch64": "arm64/include/uapi/asm/unistd.h", # Currently no extra defines.
	"RISCV32": "riscv/include/uapi/asm/unistd.h", # NR_riscv_flush_icache
	"RISCV64": "riscv/include/uapi/asm/unistd.h", # ditto
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
	abiWhitelist = syscall_table_urls[arch][1];
	for line in read_url(LINUX_ARCH_URL+syscall_table_urls[arch][0]).splitlines():
		line = line.partition('#')[0].strip()
		if len(line) > 0:
			line = line.split(None, 4)
			if line[1] in abiWhitelist:
				yield line;

def iter_unistd_h(path_from_arch):
	import re
	text = read_url(LINUX_ARCH_URL+path_from_arch)
	text = re.sub(r"/[*].*?[*]/", "", text, re.DOTALL)#Remove C-style comments
	text = text.splitlines()
	for line in text:
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

def yield_nr_defs(arch):
	if arch == "X86_64":
		# X86_64: has special handling for x32.
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
		nr_offset = 0 if len(syscall_table_urls[arch]) < 3 else syscall_table_urls[arch][2]
		for line in iter_syscall_table(arch):
			try:
				yield "enum NR_"+line[2]+" = "+str(nr_offset + int(line[0]))+";"
			except:
				yield "// omitted " + " ".join(line);
	elif arch in uses_asm_generic_unistd:
		yield "public import mir.linux.arch.asm_generic.unistd;"
		for line in _yield_nr_defs_unistd_helper(iter_unistd_h(uses_asm_generic_unistd[arch])):
			yield line
	else:
		for line in _yield_nr_defs_unistd_helper(iter_unistd_h(arch.lower()+"/include/uapi/asm/unistd.h")):
			yield line

def write_nr_defs_file(arch):
	#We might immediately get an web error.
	#Don't create an empty file / erase the existing file if so.
	lines = yield_nr_defs(arch)
	mname = "mir.linux.arch."+arch.lower()+".uapi._asm.unistd"
	fdir = "source/mir/linux/arch/"+arch.lower()+"/uapi/_asm"
	fpath = fdir + "/unistd.di"
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
				"MIPS_O32","MIPS_N32","MIPS64","RISCV32","RISCV64"]
	if len(argv) == 0 or len([x for x in argv if x.startswith('-')]) > 0:
		print (__doc__)
		sys.exit(2)
	arch_modules = []
	for arg in argv:
		arch_modules.append((arg, write_nr_defs_file(arg)))
	mname = "mir.linux._asm.unistd"
	fdir = "source/mir/linux/_asm"
	fpath = fdir+"/unistd.di"
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
