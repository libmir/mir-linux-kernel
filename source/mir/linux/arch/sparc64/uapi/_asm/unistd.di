/++
Auto-generated Linux syscall constants for SPARC64
+/
module mir.linux.arch.sparc64.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_restart_syscall = 0;
enum NR_exit = 1;
enum NR_fork = 2;
enum NR_read = 3;
enum NR_write = 4;
enum NR_open = 5;
enum NR_close = 6;
enum NR_wait4 = 7;
enum NR_creat = 8;
enum NR_link = 9;
enum NR_unlink = 10;
enum NR_execv = 11;
enum NR_chdir = 12;
enum NR_chown = 13;
enum NR_mknod = 14;
enum NR_chmod = 15;
enum NR_lchown = 16;
enum NR_brk = 17;
enum NR_perfctr = 18;
enum NR_lseek = 19;
enum NR_getpid = 20;
enum NR_capget = 21;
enum NR_capset = 22;
enum NR_setuid = 23;
enum NR_getuid = 24;
enum NR_vmsplice = 25;
enum NR_ptrace = 26;
enum NR_alarm = 27;
enum NR_sigaltstack = 28;
enum NR_pause = 29;
enum NR_utime = 30;
enum NR_access = 33;
enum NR_nice = 34;
enum NR_sync = 36;
enum NR_kill = 37;
enum NR_stat = 38;
enum NR_sendfile = 39;
enum NR_lstat = 40;
enum NR_dup = 41;
enum NR_pipe = 42;
enum NR_times = 43;
enum NR_umount2 = 45;
enum NR_setgid = 46;
enum NR_getgid = 47;
enum NR_signal = 48;
enum NR_geteuid = 49;
enum NR_getegid = 50;
enum NR_acct = 51;
enum NR_memory_ordering = 52;
enum NR_ioctl = 54;
enum NR_reboot = 55;
enum NR_symlink = 57;
enum NR_readlink = 58;
enum NR_execve = 59;
enum NR_umask = 60;
enum NR_chroot = 61;
enum NR_fstat = 62;
enum NR_fstat64 = 63;
enum NR_getpagesize = 64;
enum NR_msync = 65;
enum NR_vfork = 66;
enum NR_pread64 = 67;
enum NR_pwrite64 = 68;
enum NR_mmap = 71;
enum NR_munmap = 73;
enum NR_mprotect = 74;
enum NR_madvise = 75;
enum NR_vhangup = 76;
enum NR_mincore = 78;
enum NR_getgroups = 79;
enum NR_setgroups = 80;
enum NR_getpgrp = 81;
enum NR_setitimer = 83;
enum NR_swapon = 85;
enum NR_getitimer = 86;
enum NR_sethostname = 88;
enum NR_dup2 = 90;
enum NR_fcntl = 92;
enum NR_select = 93;
enum NR_fsync = 95;
enum NR_setpriority = 96;
enum NR_socket = 97;
enum NR_connect = 98;
enum NR_accept = 99;
enum NR_getpriority = 100;
enum NR_rt_sigreturn = 101;
enum NR_rt_sigaction = 102;
enum NR_rt_sigprocmask = 103;
enum NR_rt_sigpending = 104;
enum NR_rt_sigtimedwait = 105;
enum NR_rt_sigqueueinfo = 106;
enum NR_rt_sigsuspend = 107;
enum NR_setresuid = 108;
enum NR_getresuid = 109;
enum NR_setresgid = 110;
enum NR_getresgid = 111;
enum NR_recvmsg = 113;
enum NR_sendmsg = 114;
enum NR_gettimeofday = 116;
enum NR_getrusage = 117;
enum NR_getsockopt = 118;
enum NR_getcwd = 119;
enum NR_readv = 120;
enum NR_writev = 121;
enum NR_settimeofday = 122;
enum NR_fchown = 123;
enum NR_fchmod = 124;
enum NR_recvfrom = 125;
enum NR_setreuid = 126;
enum NR_setregid = 127;
enum NR_rename = 128;
enum NR_truncate = 129;
enum NR_ftruncate = 130;
enum NR_flock = 131;
enum NR_lstat64 = 132;
enum NR_sendto = 133;
enum NR_shutdown = 134;
enum NR_socketpair = 135;
enum NR_mkdir = 136;
enum NR_rmdir = 137;
enum NR_utimes = 138;
enum NR_stat64 = 139;
enum NR_sendfile64 = 140;
enum NR_getpeername = 141;
enum NR_futex = 142;
enum NR_gettid = 143;
enum NR_getrlimit = 144;
enum NR_setrlimit = 145;
enum NR_pivot_root = 146;
enum NR_prctl = 147;
enum NR_pciconfig_read = 148;
enum NR_pciconfig_write = 149;
enum NR_getsockname = 150;
enum NR_inotify_init = 151;
enum NR_inotify_add_watch = 152;
enum NR_poll = 153;
enum NR_getdents64 = 154;
enum NR_inotify_rm_watch = 156;
enum NR_statfs = 157;
enum NR_fstatfs = 158;
enum NR_umount = 159;
enum NR_sched_set_affinity = 160;
enum NR_sched_get_affinity = 161;
enum NR_getdomainname = 162;
enum NR_setdomainname = 163;
enum NR_utrap_install = 164;
enum NR_quotactl = 165;
enum NR_set_tid_address = 166;
enum NR_mount = 167;
enum NR_ustat = 168;
enum NR_setxattr = 169;
enum NR_lsetxattr = 170;
enum NR_fsetxattr = 171;
enum NR_getxattr = 172;
enum NR_lgetxattr = 173;
enum NR_getdents = 174;
enum NR_setsid = 175;
enum NR_fchdir = 176;
enum NR_fgetxattr = 177;
enum NR_listxattr = 178;
enum NR_llistxattr = 179;
enum NR_flistxattr = 180;
enum NR_removexattr = 181;
enum NR_lremovexattr = 182;
enum NR_sigpending = 183;
enum NR_query_module = 184;
enum NR_setpgid = 185;
enum NR_fremovexattr = 186;
enum NR_tkill = 187;
enum NR_exit_group = 188;
enum NR_uname = 189;
enum NR_init_module = 190;
enum NR_personality = 191;
enum NR_remap_file_pages = 192;
enum NR_epoll_create = 193;
enum NR_epoll_ctl = 194;
enum NR_epoll_wait = 195;
enum NR_ioprio_set = 196;
enum NR_getppid = 197;
enum NR_sigaction = 198;
enum NR_sgetmask = 199;
enum NR_ssetmask = 200;
enum NR_sigsuspend = 201;
enum NR_oldlstat = 202;
enum NR_uselib = 203;
enum NR_readdir = 204;
enum NR_readahead = 205;
enum NR_socketcall = 206;
enum NR_syslog = 207;
enum NR_lookup_dcookie = 208;
enum NR_fadvise64 = 209;
enum NR_fadvise64_64 = 210;
enum NR_tgkill = 211;
enum NR_waitpid = 212;
enum NR_swapoff = 213;
enum NR_sysinfo = 214;
enum NR_ipc = 215;
enum NR_sigreturn = 216;
enum NR_clone = 217;
enum NR_ioprio_get = 218;
enum NR_adjtimex = 219;
enum NR_sigprocmask = 220;
enum NR_create_module = 221;
enum NR_delete_module = 222;
enum NR_get_kernel_syms = 223;
enum NR_getpgid = 224;
enum NR_bdflush = 225;
enum NR_sysfs = 226;
enum NR_afs_syscall = 227;
enum NR_setfsuid = 228;
enum NR_setfsgid = 229;
enum NR__newselect = 230;
enum NR_splice = 232;
enum NR_stime = 233;
enum NR_statfs64 = 234;
enum NR_fstatfs64 = 235;
enum NR__llseek = 236;
enum NR_mlock = 237;
enum NR_munlock = 238;
enum NR_mlockall = 239;
enum NR_munlockall = 240;
enum NR_sched_setparam = 241;
enum NR_sched_getparam = 242;
enum NR_sched_setscheduler = 243;
enum NR_sched_getscheduler = 244;
enum NR_sched_yield = 245;
enum NR_sched_get_priority_max = 246;
enum NR_sched_get_priority_min = 247;
enum NR_sched_rr_get_interval = 248;
enum NR_nanosleep = 249;
enum NR_mremap = 250;
enum NR__sysctl = 251;
enum NR_getsid = 252;
enum NR_fdatasync = 253;
enum NR_nfsservctl = 254;
enum NR_sync_file_range = 255;
enum NR_clock_settime = 256;
enum NR_clock_gettime = 257;
enum NR_clock_getres = 258;
enum NR_clock_nanosleep = 259;
enum NR_sched_getaffinity = 260;
enum NR_sched_setaffinity = 261;
enum NR_timer_settime = 262;
enum NR_timer_gettime = 263;
enum NR_timer_getoverrun = 264;
enum NR_timer_delete = 265;
enum NR_timer_create = 266;
enum NR_vserver = 267;
enum NR_io_setup = 268;
enum NR_io_destroy = 269;
enum NR_io_submit = 270;
enum NR_io_cancel = 271;
enum NR_io_getevents = 272;
enum NR_mq_open = 273;
enum NR_mq_unlink = 274;
enum NR_mq_timedsend = 275;
enum NR_mq_timedreceive = 276;
enum NR_mq_notify = 277;
enum NR_mq_getsetattr = 278;
enum NR_waitid = 279;
enum NR_tee = 280;
enum NR_add_key = 281;
enum NR_request_key = 282;
enum NR_keyctl = 283;
enum NR_openat = 284;
enum NR_mkdirat = 285;
enum NR_mknodat = 286;
enum NR_fchownat = 287;
enum NR_futimesat = 288;
enum NR_fstatat64 = 289;
enum NR_unlinkat = 290;
enum NR_renameat = 291;
enum NR_linkat = 292;
enum NR_symlinkat = 293;
enum NR_readlinkat = 294;
enum NR_fchmodat = 295;
enum NR_faccessat = 296;
enum NR_pselect6 = 297;
enum NR_ppoll = 298;
enum NR_unshare = 299;
enum NR_set_robust_list = 300;
enum NR_get_robust_list = 301;
enum NR_migrate_pages = 302;
enum NR_mbind = 303;
enum NR_get_mempolicy = 304;
enum NR_set_mempolicy = 305;
enum NR_kexec_load = 306;
enum NR_move_pages = 307;
enum NR_getcpu = 308;
enum NR_epoll_pwait = 309;
enum NR_utimensat = 310;
enum NR_signalfd = 311;
enum NR_timerfd_create = 312;
enum NR_eventfd = 313;
enum NR_fallocate = 314;
enum NR_timerfd_settime = 315;
enum NR_timerfd_gettime = 316;
enum NR_signalfd4 = 317;
enum NR_eventfd2 = 318;
enum NR_epoll_create1 = 319;
enum NR_dup3 = 320;
enum NR_pipe2 = 321;
enum NR_inotify_init1 = 322;
enum NR_accept4 = 323;
enum NR_preadv = 324;
enum NR_pwritev = 325;
enum NR_rt_tgsigqueueinfo = 326;
enum NR_perf_event_open = 327;
enum NR_recvmmsg = 328;
enum NR_fanotify_init = 329;
enum NR_fanotify_mark = 330;
enum NR_prlimit64 = 331;
enum NR_name_to_handle_at = 332;
enum NR_open_by_handle_at = 333;
enum NR_clock_adjtime = 334;
enum NR_syncfs = 335;
enum NR_sendmmsg = 336;
enum NR_setns = 337;
enum NR_process_vm_readv = 338;
enum NR_process_vm_writev = 339;
enum NR_kern_features = 340;
enum NR_kcmp = 341;
enum NR_finit_module = 342;
enum NR_sched_setattr = 343;
enum NR_sched_getattr = 344;
enum NR_renameat2 = 345;
enum NR_seccomp = 346;
enum NR_getrandom = 347;
enum NR_memfd_create = 348;
enum NR_bpf = 349;
enum NR_execveat = 350;
enum NR_membarrier = 351;
enum NR_userfaultfd = 352;
enum NR_bind = 353;
enum NR_listen = 354;
enum NR_setsockopt = 355;
enum NR_mlock2 = 356;
enum NR_copy_file_range = 357;
enum NR_preadv2 = 358;
enum NR_pwritev2 = 359;
enum NR_statx = 360;
enum NR_io_pgetevents = 361;
enum NR_pkey_mprotect = 362;
enum NR_pkey_alloc = 363;
enum NR_pkey_free = 364;
enum NR_rseq = 365;
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
