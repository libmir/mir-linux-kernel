/++
Auto-generated Linux syscall constants
+/
module mir.linux._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

version (X86) public import mir.linux.arch.x86.uapi._asm.unistd;
else version (X86_64) public import mir.linux.arch.x86_64.uapi._asm.unistd;
else version (ARM) public import mir.linux.arch.arm.uapi._asm.unistd;
else version (AArch64) public import mir.linux.arch.aarch64.uapi._asm.unistd;
else version (SPARC) public import mir.linux.arch.sparc.uapi._asm.unistd;
else version (SPARC64) public import mir.linux.arch.sparc64.uapi._asm.unistd;
else version (Alpha) public import mir.linux.arch.alpha.uapi._asm.unistd;
else version (IA64) public import mir.linux.arch.ia64.uapi._asm.unistd;
else version (PPC) public import mir.linux.arch.ppc.uapi._asm.unistd;
else version (PPC64) public import mir.linux.arch.ppc64.uapi._asm.unistd;
else version (SH) public import mir.linux.arch.sh.uapi._asm.unistd;
else version (S390) public import mir.linux.arch.s390.uapi._asm.unistd;
else version (SystemZ) public import mir.linux.arch.systemz.uapi._asm.unistd;
else version (HPPA) public import mir.linux.arch.hppa.uapi._asm.unistd;
else version (HPPA64) public import mir.linux.arch.hppa64.uapi._asm.unistd;
else version (MIPS_O32) public import mir.linux.arch.mips_o32.uapi._asm.unistd;
else version (MIPS_N32) public import mir.linux.arch.mips_n32.uapi._asm.unistd;
else version (MIPS64) public import mir.linux.arch.mips64.uapi._asm.unistd;
else pragma(msg, "Linux syscall constants not known for target architecture!");
