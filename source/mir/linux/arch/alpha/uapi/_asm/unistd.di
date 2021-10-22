/++
Auto-generated Linux syscall constants for Alpha
+/
module mir.linux.arch.alpha.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_osf_syscall = 0;
enum NR_exit = 1;
enum NR_fork = 2;
enum NR_read = 3;
enum NR_write = 4;
enum NR_osf_old_open = 5;
enum NR_close = 6;
enum NR_osf_wait4 = 7;
enum NR_osf_old_creat = 8;
enum NR_link = 9;
enum NR_unlink = 10;
enum NR_osf_execve = 11;
enum NR_chdir = 12;
enum NR_fchdir = 13;
enum NR_mknod = 14;
enum NR_chmod = 15;
enum NR_chown = 16;
enum NR_brk = 17;
enum NR_osf_getfsstat = 18;
enum NR_lseek = 19;
enum NR_getxpid = 20;
enum NR_osf_mount = 21;
enum NR_umount2 = 22;
enum NR_setuid = 23;
enum NR_getxuid = 24;
enum NR_exec_with_loader = 25;
enum NR_ptrace = 26;
enum NR_osf_nrecvmsg = 27;
enum NR_osf_nsendmsg = 28;
enum NR_osf_nrecvfrom = 29;
enum NR_osf_naccept = 30;
enum NR_osf_ngetpeername = 31;
enum NR_osf_ngetsockname = 32;
enum NR_access = 33;
enum NR_osf_chflags = 34;
enum NR_osf_fchflags = 35;
enum NR_sync = 36;
enum NR_kill = 37;
enum NR_osf_old_stat = 38;
enum NR_setpgid = 39;
enum NR_osf_old_lstat = 40;
enum NR_dup = 41;
enum NR_pipe = 42;
enum NR_osf_set_program_attributes = 43;
enum NR_osf_profil = 44;
enum NR_open = 45;
enum NR_osf_old_sigaction = 46;
enum NR_getxgid = 47;
enum NR_osf_sigprocmask = 48;
enum NR_osf_getlogin = 49;
enum NR_osf_setlogin = 50;
enum NR_acct = 51;
enum NR_sigpending = 52;
enum NR_ioctl = 54;
enum NR_osf_reboot = 55;
enum NR_osf_revoke = 56;
enum NR_symlink = 57;
enum NR_readlink = 58;
enum NR_execve = 59;
enum NR_umask = 60;
enum NR_chroot = 61;
enum NR_osf_old_fstat = 62;
enum NR_getpgrp = 63;
enum NR_getpagesize = 64;
enum NR_osf_mremap = 65;
enum NR_vfork = 66;
enum NR_stat = 67;
enum NR_lstat = 68;
enum NR_osf_sbrk = 69;
enum NR_osf_sstk = 70;
enum NR_mmap = 71;
enum NR_osf_old_vadvise = 72;
enum NR_munmap = 73;
enum NR_mprotect = 74;
enum NR_madvise = 75;
enum NR_vhangup = 76;
enum NR_osf_kmodcall = 77;
enum NR_osf_mincore = 78;
enum NR_getgroups = 79;
enum NR_setgroups = 80;
enum NR_osf_old_getpgrp = 81;
enum NR_setpgrp = 82;
enum NR_osf_setitimer = 83;
enum NR_osf_old_wait = 84;
enum NR_osf_table = 85;
enum NR_osf_getitimer = 86;
enum NR_gethostname = 87;
enum NR_sethostname = 88;
enum NR_getdtablesize = 89;
enum NR_dup2 = 90;
enum NR_fstat = 91;
enum NR_fcntl = 92;
enum NR_osf_select = 93;
enum NR_poll = 94;
enum NR_fsync = 95;
enum NR_setpriority = 96;
enum NR_socket = 97;
enum NR_connect = 98;
enum NR_accept = 99;
enum NR_getpriority = 100;
enum NR_send = 101;
enum NR_recv = 102;
enum NR_sigreturn = 103;
enum NR_bind = 104;
enum NR_setsockopt = 105;
enum NR_listen = 106;
enum NR_osf_plock = 107;
enum NR_osf_old_sigvec = 108;
enum NR_osf_old_sigblock = 109;
enum NR_osf_old_sigsetmask = 110;
enum NR_sigsuspend = 111;
enum NR_osf_sigstack = 112;
enum NR_recvmsg = 113;
enum NR_sendmsg = 114;
enum NR_osf_old_vtrace = 115;
enum NR_osf_gettimeofday = 116;
enum NR_osf_getrusage = 117;
enum NR_getsockopt = 118;
enum NR_readv = 120;
enum NR_writev = 121;
enum NR_osf_settimeofday = 122;
enum NR_fchown = 123;
enum NR_fchmod = 124;
enum NR_recvfrom = 125;
enum NR_setreuid = 126;
enum NR_setregid = 127;
enum NR_rename = 128;
enum NR_truncate = 129;
enum NR_ftruncate = 130;
enum NR_flock = 131;
enum NR_setgid = 132;
enum NR_sendto = 133;
enum NR_shutdown = 134;
enum NR_socketpair = 135;
enum NR_mkdir = 136;
enum NR_rmdir = 137;
enum NR_osf_utimes = 138;
enum NR_osf_old_sigreturn = 139;
enum NR_osf_adjtime = 140;
enum NR_getpeername = 141;
enum NR_osf_gethostid = 142;
enum NR_osf_sethostid = 143;
enum NR_getrlimit = 144;
enum NR_setrlimit = 145;
enum NR_osf_old_killpg = 146;
enum NR_setsid = 147;
enum NR_quotactl = 148;
enum NR_osf_oldquota = 149;
enum NR_getsockname = 150;
enum NR_osf_pid_block = 153;
enum NR_osf_pid_unblock = 154;
enum NR_sigaction = 156;
enum NR_osf_sigwaitprim = 157;
enum NR_osf_nfssvc = 158;
enum NR_osf_getdirentries = 159;
enum NR_osf_statfs = 160;
enum NR_osf_fstatfs = 161;
enum NR_osf_asynch_daemon = 163;
enum NR_osf_getfh = 164;
enum NR_osf_getdomainname = 165;
enum NR_setdomainname = 166;
enum NR_osf_exportfs = 169;
enum NR_osf_alt_plock = 181;
enum NR_osf_getmnt = 184;
enum NR_osf_alt_sigpending = 187;
enum NR_osf_alt_setsid = 188;
enum NR_osf_swapon = 199;
enum NR_msgctl = 200;
enum NR_msgget = 201;
enum NR_msgrcv = 202;
enum NR_msgsnd = 203;
enum NR_semctl = 204;
enum NR_semget = 205;
enum NR_semop = 206;
enum NR_osf_utsname = 207;
enum NR_lchown = 208;
enum NR_shmat = 209;
enum NR_shmctl = 210;
enum NR_shmdt = 211;
enum NR_shmget = 212;
enum NR_osf_mvalid = 213;
enum NR_osf_getaddressconf = 214;
enum NR_osf_msleep = 215;
enum NR_osf_mwakeup = 216;
enum NR_msync = 217;
enum NR_osf_signal = 218;
enum NR_osf_utc_gettime = 219;
enum NR_osf_utc_adjtime = 220;
enum NR_osf_security = 222;
enum NR_osf_kloadcall = 223;
enum NR_osf_stat = 224;
enum NR_osf_lstat = 225;
enum NR_osf_fstat = 226;
enum NR_osf_statfs64 = 227;
enum NR_osf_fstatfs64 = 228;
enum NR_getpgid = 233;
enum NR_getsid = 234;
enum NR_sigaltstack = 235;
enum NR_osf_waitid = 236;
enum NR_osf_priocntlset = 237;
enum NR_osf_sigsendset = 238;
enum NR_osf_set_speculative = 239;
enum NR_osf_msfs_syscall = 240;
enum NR_osf_sysinfo = 241;
enum NR_osf_uadmin = 242;
enum NR_osf_fuser = 243;
enum NR_osf_proplist_syscall = 244;
enum NR_osf_ntp_adjtime = 245;
enum NR_osf_ntp_gettime = 246;
enum NR_osf_pathconf = 247;
enum NR_osf_fpathconf = 248;
enum NR_osf_uswitch = 250;
enum NR_osf_usleep_thread = 251;
enum NR_osf_audcntl = 252;
enum NR_osf_audgen = 253;
enum NR_sysfs = 254;
enum NR_osf_subsys_info = 255;
enum NR_osf_getsysinfo = 256;
enum NR_osf_setsysinfo = 257;
enum NR_osf_afs_syscall = 258;
enum NR_osf_swapctl = 259;
enum NR_osf_memcntl = 260;
enum NR_osf_fdatasync = 261;
enum NR_bdflush = 300;
enum NR_sethae = 301;
enum NR_mount = 302;
enum NR_old_adjtimex = 303;
enum NR_swapoff = 304;
enum NR_getdents = 305;
enum NR_create_module = 306;
enum NR_init_module = 307;
enum NR_delete_module = 308;
enum NR_get_kernel_syms = 309;
enum NR_syslog = 310;
enum NR_reboot = 311;
enum NR_clone = 312;
enum NR_uselib = 313;
enum NR_mlock = 314;
enum NR_munlock = 315;
enum NR_mlockall = 316;
enum NR_munlockall = 317;
enum NR_sysinfo = 318;
enum NR__sysctl = 319;
enum NR_oldumount = 321;
enum NR_swapon = 322;
enum NR_times = 323;
enum NR_personality = 324;
enum NR_setfsuid = 325;
enum NR_setfsgid = 326;
enum NR_ustat = 327;
enum NR_statfs = 328;
enum NR_fstatfs = 329;
enum NR_sched_setparam = 330;
enum NR_sched_getparam = 331;
enum NR_sched_setscheduler = 332;
enum NR_sched_getscheduler = 333;
enum NR_sched_yield = 334;
enum NR_sched_get_priority_max = 335;
enum NR_sched_get_priority_min = 336;
enum NR_sched_rr_get_interval = 337;
enum NR_afs_syscall = 338;
enum NR_uname = 339;
enum NR_nanosleep = 340;
enum NR_mremap = 341;
enum NR_nfsservctl = 342;
enum NR_setresuid = 343;
enum NR_getresuid = 344;
enum NR_pciconfig_read = 345;
enum NR_pciconfig_write = 346;
enum NR_query_module = 347;
enum NR_prctl = 348;
enum NR_pread64 = 349;
enum NR_pwrite64 = 350;
enum NR_rt_sigreturn = 351;
enum NR_rt_sigaction = 352;
enum NR_rt_sigprocmask = 353;
enum NR_rt_sigpending = 354;
enum NR_rt_sigtimedwait = 355;
enum NR_rt_sigqueueinfo = 356;
enum NR_rt_sigsuspend = 357;
enum NR_select = 358;
enum NR_gettimeofday = 359;
enum NR_settimeofday = 360;
enum NR_getitimer = 361;
enum NR_setitimer = 362;
enum NR_utimes = 363;
enum NR_getrusage = 364;
enum NR_wait4 = 365;
enum NR_adjtimex = 366;
enum NR_getcwd = 367;
enum NR_capget = 368;
enum NR_capset = 369;
enum NR_sendfile = 370;
enum NR_setresgid = 371;
enum NR_getresgid = 372;
enum NR_dipc = 373;
enum NR_pivot_root = 374;
enum NR_mincore = 375;
enum NR_pciconfig_iobase = 376;
enum NR_getdents64 = 377;
enum NR_gettid = 378;
enum NR_readahead = 379;
enum NR_tkill = 381;
enum NR_setxattr = 382;
enum NR_lsetxattr = 383;
enum NR_fsetxattr = 384;
enum NR_getxattr = 385;
enum NR_lgetxattr = 386;
enum NR_fgetxattr = 387;
enum NR_listxattr = 388;
enum NR_llistxattr = 389;
enum NR_flistxattr = 390;
enum NR_removexattr = 391;
enum NR_lremovexattr = 392;
enum NR_fremovexattr = 393;
enum NR_futex = 394;
enum NR_sched_setaffinity = 395;
enum NR_sched_getaffinity = 396;
enum NR_tuxcall = 397;
enum NR_io_setup = 398;
enum NR_io_destroy = 399;
enum NR_io_getevents = 400;
enum NR_io_submit = 401;
enum NR_io_cancel = 402;
enum NR_exit_group = 405;
enum NR_lookup_dcookie = 406;
enum NR_epoll_create = 407;
enum NR_epoll_ctl = 408;
enum NR_epoll_wait = 409;
enum NR_remap_file_pages = 410;
enum NR_set_tid_address = 411;
enum NR_restart_syscall = 412;
enum NR_fadvise64 = 413;
enum NR_timer_create = 414;
enum NR_timer_settime = 415;
enum NR_timer_gettime = 416;
enum NR_timer_getoverrun = 417;
enum NR_timer_delete = 418;
enum NR_clock_settime = 419;
enum NR_clock_gettime = 420;
enum NR_clock_getres = 421;
enum NR_clock_nanosleep = 422;
enum NR_semtimedop = 423;
enum NR_tgkill = 424;
enum NR_stat64 = 425;
enum NR_lstat64 = 426;
enum NR_fstat64 = 427;
enum NR_vserver = 428;
enum NR_mbind = 429;
enum NR_get_mempolicy = 430;
enum NR_set_mempolicy = 431;
enum NR_mq_open = 432;
enum NR_mq_unlink = 433;
enum NR_mq_timedsend = 434;
enum NR_mq_timedreceive = 435;
enum NR_mq_notify = 436;
enum NR_mq_getsetattr = 437;
enum NR_waitid = 438;
enum NR_add_key = 439;
enum NR_request_key = 440;
enum NR_keyctl = 441;
enum NR_ioprio_set = 442;
enum NR_ioprio_get = 443;
enum NR_inotify_init = 444;
enum NR_inotify_add_watch = 445;
enum NR_inotify_rm_watch = 446;
enum NR_fdatasync = 447;
enum NR_kexec_load = 448;
enum NR_migrate_pages = 449;
enum NR_openat = 450;
enum NR_mkdirat = 451;
enum NR_mknodat = 452;
enum NR_fchownat = 453;
enum NR_futimesat = 454;
enum NR_fstatat64 = 455;
enum NR_unlinkat = 456;
enum NR_renameat = 457;
enum NR_linkat = 458;
enum NR_symlinkat = 459;
enum NR_readlinkat = 460;
enum NR_fchmodat = 461;
enum NR_faccessat = 462;
enum NR_pselect6 = 463;
enum NR_ppoll = 464;
enum NR_unshare = 465;
enum NR_set_robust_list = 466;
enum NR_get_robust_list = 467;
enum NR_splice = 468;
enum NR_sync_file_range = 469;
enum NR_tee = 470;
enum NR_vmsplice = 471;
enum NR_move_pages = 472;
enum NR_getcpu = 473;
enum NR_epoll_pwait = 474;
enum NR_utimensat = 475;
enum NR_signalfd = 476;
enum NR_timerfd = 477;
enum NR_eventfd = 478;
enum NR_recvmmsg = 479;
enum NR_fallocate = 480;
enum NR_timerfd_create = 481;
enum NR_timerfd_settime = 482;
enum NR_timerfd_gettime = 483;
enum NR_signalfd4 = 484;
enum NR_eventfd2 = 485;
enum NR_epoll_create1 = 486;
enum NR_dup3 = 487;
enum NR_pipe2 = 488;
enum NR_inotify_init1 = 489;
enum NR_preadv = 490;
enum NR_pwritev = 491;
enum NR_rt_tgsigqueueinfo = 492;
enum NR_perf_event_open = 493;
enum NR_fanotify_init = 494;
enum NR_fanotify_mark = 495;
enum NR_prlimit64 = 496;
enum NR_name_to_handle_at = 497;
enum NR_open_by_handle_at = 498;
enum NR_clock_adjtime = 499;
enum NR_syncfs = 500;
enum NR_setns = 501;
enum NR_accept4 = 502;
enum NR_sendmmsg = 503;
enum NR_process_vm_readv = 504;
enum NR_process_vm_writev = 505;
enum NR_kcmp = 506;
enum NR_finit_module = 507;
enum NR_sched_setattr = 508;
enum NR_sched_getattr = 509;
enum NR_renameat2 = 510;
enum NR_getrandom = 511;
enum NR_memfd_create = 512;
enum NR_execveat = 513;
enum NR_seccomp = 514;
enum NR_bpf = 515;
enum NR_userfaultfd = 516;
enum NR_membarrier = 517;
enum NR_mlock2 = 518;
enum NR_copy_file_range = 519;
enum NR_preadv2 = 520;
enum NR_pwritev2 = 521;
enum NR_statx = 522;
enum NR_io_pgetevents = 523;
enum NR_pkey_mprotect = 524;
enum NR_pkey_alloc = 525;
enum NR_pkey_free = 526;
enum NR_rseq = 527;
enum NR_statfs64 = 528;
enum NR_fstatfs64 = 529;
enum NR_getegid = 530;
enum NR_geteuid = 531;
enum NR_getppid = 532;
enum NR_pidfd_send_signal = 534;
enum NR_io_uring_setup = 535;
enum NR_io_uring_enter = 536;
enum NR_io_uring_register = 537;
enum NR_open_tree = 538;
enum NR_move_mount = 539;
enum NR_fsopen = 540;
enum NR_fsconfig = 541;
enum NR_fsmount = 542;
enum NR_fspick = 543;
enum NR_pidfd_open = 544;
enum NR_close_range = 546;
enum NR_openat2 = 547;
enum NR_pidfd_getfd = 548;
enum NR_faccessat2 = 549;
enum NR_process_madvise = 550;
enum NR_epoll_pwait2 = 551;
enum NR_mount_setattr = 552;
enum NR_quotactl_fd = 553;
enum NR_landlock_create_ruleset = 554;
enum NR_landlock_add_rule = 555;
enum NR_landlock_restrict_self = 556;
enum NR_process_mrelease = 558;
