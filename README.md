# mir-linux-kernel
Linux kernel headers

#### Motivating Example
Linux 3.17 added the `getrandom` syscall. Using it instead of `/dev/[u]?random` was a win. But we didn't think about all of the architectures that people might try building our library on, and soon we got a report from a user that our latest and greatest release was failing to compile on Raspberry Pi.

#### Example Usage
```d
import mir.linux._asm.unistd: NR_getrandom;

/*
*   If the GRND_NONBLOCK flag is set, then
*   getrandom() does not block in these cases, but instead
*   immediately returns -1 with errno set to EAGAIN.
*/
private ptrdiff_t genRandomImplSysNonBlocking()(scope void* ptr, size_t len) @nogc nothrow @system
{
    return syscall(NR_getrandom, cast(size_t) ptr, len, GRND_NONBLOCK);
}

```

#### Notes
Currently we have syscall numbers for:

* x86
* AMD64 / x86-64
* ARM
* ARM64 / AArch64
* PPC
* PPC64
* IA64
* MIPS O32
* MIPS N32
* MIPS64
* SPARC
* SPARC64
* S390
* SystemZ
* HP PA-RISC, 32-bit
* HP PA-RISC, 64-bit
* SuperH
* Alpha

This compares favorably to the [list of architectures](https://wiki.dlang.org/Compilers) supported by the various D compilers, but currently our test suite only has x86 and x86-64 machines in it which is how we got into this mess in the first place. Caveat lector. We'll try to fix problems as we discover them and the set of files included may grow as we need more things.
