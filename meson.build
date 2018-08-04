project('mir-linux-kernel', 'd', version : '1.0.0', license: 'BSL-1.0')

mir_linux_kernel_dir = include_directories('source/')

mir_linux_kernel_dep = declare_dependency(
    include_directories: mir_linux_kernel_dir,
)

install_subdir('source/',
    strip_directory : true,
    install_dir: 'include/d/' + meson.project_name(),
)

import('pkgconfig').generate(
    name: meson.project_name(),
    description: 'Linux kernel headers for Dlang.',
    subdirs: 'd/' + meson.project_name(),
    version: meson.project_version(),
)
 