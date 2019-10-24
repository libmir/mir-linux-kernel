project('mir-linux-kernel', 'd', version : '1.0.0', license: 'BSL-1.0')

# semver
version = meson.project_version().split('.')
major_version = version[0].to_int()
minor_version = version[1].to_int()
micro_version = version[2].to_int()

# base
dc = meson.get_compiler('d')

# Compiler and linker flags
common_dflags = []
common_ldflags = []

if host_machine.system() == 'linux'
  common_ldflags += [ '-Wl,-z,relro', '-Wl,-z,now' ]
endif


# Source files
mir_linux_kernel_dir = include_directories('source/')

mir_linux_kernel_src = [
    'source/mir/linux/arch/mips64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/mips_o32/uapi/_asm/unistd.d',
    'source/mir/linux/arch/sparc/uapi/_asm/unistd.d',
    'source/mir/linux/arch/x86_64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/hppa64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/sh/uapi/_asm/unistd.d',
    'source/mir/linux/arch/s390/uapi/_asm/unistd.d',
    'source/mir/linux/arch/sparc64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/hppa/uapi/_asm/unistd.d',
    'source/mir/linux/arch/ppc/uapi/_asm/unistd.d',
    'source/mir/linux/arch/asm_generic/unistd.d',
    'source/mir/linux/arch/mips_n32/uapi/_asm/unistd.d',
    'source/mir/linux/arch/arm/uapi/_asm/unistd.d',
    'source/mir/linux/arch/ppc64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/x86/uapi/_asm/unistd.d',
    'source/mir/linux/arch/alpha/uapi/_asm/unistd.d',
    'source/mir/linux/arch/systemz/uapi/_asm/unistd.d',
    'source/mir/linux/arch/aarch64/uapi/_asm/unistd.d',
    'source/mir/linux/arch/ia64/uapi/_asm/unistd.d',
    'source/mir/linux/_asm/unistd.d',
]


lib_type = get_option('default_library')
if lib_type == 'shared' 
    mir_soname = 'lib@0@.so.@1@'.format(meson.project_name(), major_version)
    common_ldflags += ['-shared' ]
    if dc.get_id() == 'llvm'
        common_ldflags += [ '-soname', mir_soname ]
    endif 
endif


mir_linux_kernel_lib = library(meson.project_name(),
    mir_linux_kernel_src,
    include_directories: mir_linux_kernel_dir,
    install: true,
    version: meson.project_version(),
)


mir_linux_kernel_dep = declare_dependency(
    include_directories: mir_linux_kernel_dir,
)

install_subdir('source/',
    strip_directory : true,
    install_dir: 'include/d/' + meson.project_name(),
)

# Pkgconfig
pkg = import('pkgconfig')
pkg.generate(
    name: meson.project_name(),
    description: 'Linux kernel headers for Dlang.',
    subdirs: 'd/' + meson.project_name(),
    version: meson.project_version(),
    url: 'https://github.com/libmir/mir-linux-kernel'
)
 
