project('mir-linux-kernel', 'd', version: '1.1.0', license: 'BSL-1.0')

description = 'Mir Linux Kernel - Linux system call numbers for different architectures'

directories = ['source']

directories = include_directories(directories)

this_dep = declare_dependency(
    include_directories: directories,
)

install_subdir('source/',
    strip_directory : true,
    install_dir: 'include/d/' + meson.project_name(),
)

import('pkgconfig').generate(
    name: meson.project_name(),
    description: description,
    subdirs: 'd/' + meson.project_name(),
)

mir_linux_kernel_dep = this_dep
