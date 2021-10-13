/++
Auto-generated Linux syscall constants for PPC64
+/
module mir.linux.arch.ppc64.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_restart_syscall = 0;
enum NR_exit = 1;
enum NR_fork = 2;
enum NR_read = 3;
enum NR_write = 4;
enum NR_open = 5;
enum NR_close = 6;
enum NR_waitpid = 7;
enum NR_creat = 8;
enum NR_link = 9;
enum NR_unlink = 10;
enum NR_execve = 11;
enum NR_chdir = 12;
enum NR_time = 13;
enum NR_mknod = 14;
enum NR_chmod = 15;
enum NR_lchown = 16;
enum NR_break = 17;
enum NR_oldstat = 18;
enum NR_lseek = 19;
enum NR_getpid = 20;
enum NR_mount = 21;
enum NR_umount = 22;
enum NR_setuid = 23;
enum NR_getuid = 24;
enum NR_stime = 25;
enum NR_ptrace = 26;
enum NR_alarm = 27;
enum NR_oldfstat = 28;
enum NR_pause = 29;
enum NR_utime = 30;
enum NR_stty = 31;
enum NR_gtty = 32;
enum NR_access = 33;
enum NR_nice = 34;
enum NR_ftime = 35;
enum NR_sync = 36;
enum NR_kill = 37;
enum NR_rename = 38;
enum NR_mkdir = 39;
enum NR_rmdir = 40;
enum NR_dup = 41;
enum NR_pipe = 42;
enum NR_times = 43;
enum NR_prof = 44;
enum NR_brk = 45;
enum NR_setgid = 46;
enum NR_getgid = 47;
enum NR_signal = 48;
enum NR_geteuid = 49;
enum NR_getegid = 50;
enum NR_acct = 51;
enum NR_umount2 = 52;
enum NR_lock = 53;
enum NR_ioctl = 54;
enum NR_fcntl = 55;
enum NR_mpx = 56;
enum NR_setpgid = 57;
enum NR_ulimit = 58;
enum NR_oldolduname = 59;
enum NR_umask = 60;
enum NR_chroot = 61;
enum NR_ustat = 62;
enum NR_dup2 = 63;
enum NR_getppid = 64;
enum NR_getpgrp = 65;
enum NR_setsid = 66;
enum NR_sigaction = 67;
enum NR_sgetmask = 68;
enum NR_ssetmask = 69;
enum NR_setreuid = 70;
enum NR_setregid = 71;
enum NR_sigsuspend = 72;
enum NR_sigpending = 73;
enum NR_sethostname = 74;
enum NR_setrlimit = 75;
enum NR_getrlimit = 76;
enum NR_getrusage = 77;
enum NR_gettimeofday = 78;
enum NR_settimeofday = 79;
enum NR_getgroups = 80;
enum NR_setgroups = 81;
enum NR_select = 82;
enum NR_symlink = 83;
enum NR_oldlstat = 84;
enum NR_readlink = 85;
enum NR_uselib = 86;
enum NR_swapon = 87;
enum NR_reboot = 88;
enum NR_readdir = 89;
enum NR_mmap = 90;
enum NR_munmap = 91;
enum NR_truncate = 92;
enum NR_ftruncate = 93;
enum NR_fchmod = 94;
enum NR_fchown = 95;
enum NR_getpriority = 96;
enum NR_setpriority = 97;
enum NR_profil = 98;
enum NR_statfs = 99;
enum NR_fstatfs = 100;
enum NR_ioperm = 101;
enum NR_socketcall = 102;
enum NR_syslog = 103;
enum NR_setitimer = 104;
enum NR_getitimer = 105;
enum NR_stat = 106;
enum NR_lstat = 107;
enum NR_fstat = 108;
enum NR_olduname = 109;
enum NR_iopl = 110;
enum NR_vhangup = 111;
enum NR_idle = 112;
enum NR_vm86 = 113;
enum NR_wait4 = 114;
enum NR_swapoff = 115;
enum NR_sysinfo = 116;
enum NR_ipc = 117;
enum NR_fsync = 118;
enum NR_sigreturn = 119;
enum NR_clone = 120;
enum NR_setdomainname = 121;
enum NR_uname = 122;
enum NR_modify_ldt = 123;
enum NR_adjtimex = 124;
enum NR_mprotect = 125;
enum NR_sigprocmask = 126;
enum NR_create_module = 127;
enum NR_init_module = 128;
enum NR_delete_module = 129;
enum NR_get_kernel_syms = 130;
enum NR_quotactl = 131;
enum NR_getpgid = 132;
enum NR_fchdir = 133;
enum NR_bdflush = 134;
enum NR_sysfs = 135;
enum NR_personality = 136;
enum NR_afs_syscall = 137;
enum NR_setfsuid = 138;
enum NR_setfsgid = 139;
enum NR__llseek = 140;
enum NR_getdents = 141;
enum NR__newselect = 142;
enum NR_flock = 143;
enum NR_msync = 144;
enum NR_readv = 145;
enum NR_writev = 146;
enum NR_getsid = 147;
enum NR_fdatasync = 148;
enum NR__sysctl = 149;
enum NR_mlock = 150;
enum NR_munlock = 151;
enum NR_mlockall = 152;
enum NR_munlockall = 153;
enum NR_sched_setparam = 154;
enum NR_sched_getparam = 155;
enum NR_sched_setscheduler = 156;
enum NR_sched_getscheduler = 157;
enum NR_sched_yield = 158;
enum NR_sched_get_priority_max = 159;
enum NR_sched_get_priority_min = 160;
enum NR_sched_rr_get_interval = 161;
enum NR_nanosleep = 162;
enum NR_mremap = 163;
enum NR_setresuid = 164;
enum NR_getresuid = 165;
enum NR_query_module = 166;
enum NR_poll = 167;
enum NR_nfsservctl = 168;
enum NR_setresgid = 169;
enum NR_getresgid = 170;
enum NR_prctl = 171;
enum NR_rt_sigreturn = 172;
enum NR_rt_sigaction = 173;
enum NR_rt_sigprocmask = 174;
enum NR_rt_sigpending = 175;
enum NR_rt_sigtimedwait = 176;
enum NR_rt_sigqueueinfo = 177;
enum NR_rt_sigsuspend = 178;
enum NR_pread64 = 179;
enum NR_pwrite64 = 180;
enum NR_chown = 181;
enum NR_getcwd = 182;
enum NR_capget = 183;
enum NR_capset = 184;
enum NR_sigaltstack = 185;
enum NR_sendfile = 186;
enum NR_getpmsg = 187;
enum NR_putpmsg = 188;
enum NR_vfork = 189;
enum NR_ugetrlimit = 190;
enum NR_readahead = 191;
enum NR_pciconfig_read = 198;
enum NR_pciconfig_write = 199;
enum NR_pciconfig_iobase = 200;
enum NR_multiplexer = 201;
enum NR_getdents64 = 202;
enum NR_pivot_root = 203;
enum NR_madvise = 205;
enum NR_mincore = 206;
enum NR_gettid = 207;
enum NR_tkill = 208;
enum NR_setxattr = 209;
enum NR_lsetxattr = 210;
enum NR_fsetxattr = 211;
enum NR_getxattr = 212;
enum NR_lgetxattr = 213;
enum NR_fgetxattr = 214;
enum NR_listxattr = 215;
enum NR_llistxattr = 216;
enum NR_flistxattr = 217;
enum NR_removexattr = 218;
enum NR_lremovexattr = 219;
enum NR_fremovexattr = 220;
enum NR_futex = 221;
enum NR_sched_setaffinity = 222;
enum NR_sched_getaffinity = 223;
enum NR_tuxcall = 225;
enum NR_io_setup = 227;
enum NR_io_destroy = 228;
enum NR_io_getevents = 229;
enum NR_io_submit = 230;
enum NR_io_cancel = 231;
enum NR_set_tid_address = 232;
enum NR_fadvise64 = 233;
enum NR_exit_group = 234;
enum NR_lookup_dcookie = 235;
enum NR_epoll_create = 236;
enum NR_epoll_ctl = 237;
enum NR_epoll_wait = 238;
enum NR_remap_file_pages = 239;
enum NR_timer_create = 240;
enum NR_timer_settime = 241;
enum NR_timer_gettime = 242;
enum NR_timer_getoverrun = 243;
enum NR_timer_delete = 244;
enum NR_clock_settime = 245;
enum NR_clock_gettime = 246;
enum NR_clock_getres = 247;
enum NR_clock_nanosleep = 248;
enum NR_swapcontext = 249;
enum NR_tgkill = 250;
enum NR_utimes = 251;
enum NR_statfs64 = 252;
enum NR_fstatfs64 = 253;
enum NR_rtas = 255;
enum NR_sys_debug_setcontext = 256;
enum NR_migrate_pages = 258;
enum NR_mbind = 259;
enum NR_get_mempolicy = 260;
enum NR_set_mempolicy = 261;
enum NR_mq_open = 262;
enum NR_mq_unlink = 263;
enum NR_mq_timedsend = 264;
enum NR_mq_timedreceive = 265;
enum NR_mq_notify = 266;
enum NR_mq_getsetattr = 267;
enum NR_kexec_load = 268;
enum NR_add_key = 269;
enum NR_request_key = 270;
enum NR_keyctl = 271;
enum NR_waitid = 272;
enum NR_ioprio_set = 273;
enum NR_ioprio_get = 274;
enum NR_inotify_init = 275;
enum NR_inotify_add_watch = 276;
enum NR_inotify_rm_watch = 277;
enum NR_spu_run = 278;
enum NR_spu_create = 279;
enum NR_pselect6 = 280;
enum NR_ppoll = 281;
enum NR_unshare = 282;
enum NR_splice = 283;
enum NR_tee = 284;
enum NR_vmsplice = 285;
enum NR_openat = 286;
enum NR_mkdirat = 287;
enum NR_mknodat = 288;
enum NR_fchownat = 289;
enum NR_futimesat = 290;
enum NR_newfstatat = 291;
enum NR_unlinkat = 292;
enum NR_renameat = 293;
enum NR_linkat = 294;
enum NR_symlinkat = 295;
enum NR_readlinkat = 296;
enum NR_fchmodat = 297;
enum NR_faccessat = 298;
enum NR_get_robust_list = 299;
enum NR_set_robust_list = 300;
enum NR_move_pages = 301;
enum NR_getcpu = 302;
enum NR_epoll_pwait = 303;
enum NR_utimensat = 304;
enum NR_signalfd = 305;
enum NR_timerfd_create = 306;
enum NR_eventfd = 307;
enum NR_sync_file_range2 = 308;
enum NR_fallocate = 309;
enum NR_subpage_prot = 310;
enum NR_timerfd_settime = 311;
enum NR_timerfd_gettime = 312;
enum NR_signalfd4 = 313;
enum NR_eventfd2 = 314;
enum NR_epoll_create1 = 315;
enum NR_dup3 = 316;
enum NR_pipe2 = 317;
enum NR_inotify_init1 = 318;
enum NR_perf_event_open = 319;
enum NR_preadv = 320;
enum NR_pwritev = 321;
enum NR_rt_tgsigqueueinfo = 322;
enum NR_fanotify_init = 323;
enum NR_fanotify_mark = 324;
enum NR_prlimit64 = 325;
enum NR_socket = 326;
enum NR_bind = 327;
enum NR_connect = 328;
enum NR_listen = 329;
enum NR_accept = 330;
enum NR_getsockname = 331;
enum NR_getpeername = 332;
enum NR_socketpair = 333;
enum NR_send = 334;
enum NR_sendto = 335;
enum NR_recv = 336;
enum NR_recvfrom = 337;
enum NR_shutdown = 338;
enum NR_setsockopt = 339;
enum NR_getsockopt = 340;
enum NR_sendmsg = 341;
enum NR_recvmsg = 342;
enum NR_recvmmsg = 343;
enum NR_accept4 = 344;
enum NR_name_to_handle_at = 345;
enum NR_open_by_handle_at = 346;
enum NR_clock_adjtime = 347;
enum NR_syncfs = 348;
enum NR_sendmmsg = 349;
enum NR_setns = 350;
enum NR_process_vm_readv = 351;
enum NR_process_vm_writev = 352;
enum NR_finit_module = 353;
enum NR_kcmp = 354;
enum NR_sched_setattr = 355;
enum NR_sched_getattr = 356;
enum NR_renameat2 = 357;
enum NR_seccomp = 358;
enum NR_getrandom = 359;
enum NR_memfd_create = 360;
enum NR_bpf = 361;
enum NR_execveat = 362;
enum NR_switch_endian = 363;
enum NR_userfaultfd = 364;
enum NR_membarrier = 365;
enum NR_mlock2 = 378;
enum NR_copy_file_range = 379;
enum NR_preadv2 = 380;
enum NR_pwritev2 = 381;
enum NR_kexec_file_load = 382;
enum NR_statx = 383;
enum NR_pkey_alloc = 384;
enum NR_pkey_free = 385;
enum NR_pkey_mprotect = 386;
enum NR_rseq = 387;
enum NR_io_pgetevents = 388;
enum NR_semtimedop = 392;
enum NR_semget = 393;
enum NR_semctl = 394;
enum NR_shmget = 395;
enum NR_shmctl = 396;
enum NR_shmat = 397;
enum NR_shmdt = 398;
enum NR_msgget = 399;
enum NR_msgsnd = 400;
enum NR_msgrcv = 401;
enum NR_msgctl = 402;
enum NR_pidfd_send_signal = 424;
enum NR_io_uring_setup = 425;
enum NR_io_uring_enter = 426;
enum NR_io_uring_register = 427;
enum NR_open_tree = 428;
enum NR_move_mount = 429;
enum NR_fsopen = 430;
enum NR_fsconfig = 431;
enum NR_fsmount = 432;
enum NR_fspick = 433;
enum NR_pidfd_open = 434;
enum NR_clone3 = 435;
enum NR_close_range = 436;
enum NR_openat2 = 437;
enum NR_pidfd_getfd = 438;
enum NR_faccessat2 = 439;
enum NR_process_madvise = 440;
enum NR_epoll_pwait2 = 441;
enum NR_mount_setattr = 442;
enum NR_quotactl_fd = 443;
enum NR_landlock_create_ruleset = 444;
enum NR_landlock_add_rule = 445;
enum NR_landlock_restrict_self = 446;
enum NR_process_mrelease = 448;
