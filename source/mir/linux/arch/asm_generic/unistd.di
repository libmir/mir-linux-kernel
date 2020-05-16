/++
Linux syscall constants. Human-edited.
+/
module mir.linux.arch.asm_generic.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

version (D_X32) private enum bool SYSCALL_COMPAT = true;
else private enum bool SYSCALL_COMPAT = (size_t.sizeof < 8);

version(AArch64)
{
    version = ARCH_WANT_RENAMEAT;
    version = ARCH_WANT_SYS_CLONE3;
}
version (RISCV64)
{
    import core.stdc.config : c_long;
    static if ((void*).sizeof == 8 && c_long.sizeof == 8) // C LP64
        version = ARCH_WANT_SYS_CLONE3;
}

private enum bool ARCH_WANT_SYNC_FILE_RANGE2 = SYSCALL_COMPAT || (size_t.sizeof < 8);

//Linux sets for H8/300 (arch/h8300):
//ARCH_NOMMU
//ARCH_WANT_RENAMEAT

//Linux sets for S+core (arch/score):
//ARCH_WANT_SYSCALL_NO_AT
//ARCH_WANT_SYSCALL_NO_FLAGS
//ARCH_WANT_SYSCALL_OFF_T
//ARCH_WANT_SYSCALL_DEPRECATED
//ARCH_WANT_RENAMEAT

enum NR_io_setup = 0;
enum NR_io_destroy = 1;
enum NR_io_submit = 2;
enum NR_io_cancel = 3;
enum NR_io_getevents = 4;
enum NR_setxattr = 5;
enum NR_lsetxattr = 6;
enum NR_fsetxattr = 7;
enum NR_getxattr = 8;
enum NR_lgetxattr = 9;
enum NR_fgetxattr = 10;
enum NR_listxattr = 11;
enum NR_llistxattr = 12;
enum NR_flistxattr = 13;
enum NR_removexattr = 14;
enum NR_lremovexattr = 15;
enum NR_fremovexattr = 16;
enum NR_getcwd = 17;
enum NR_lookup_dcookie = 18;
enum NR_eventfd2 = 19;
enum NR_epoll_create1 = 20;
enum NR_epoll_ctl = 21;
enum NR_epoll_pwait = 22;
enum NR_dup = 23;
enum NR_dup3 = 24;
enum NR3264_fcntl = 25;
enum NR_inotify_init1 = 26;
enum NR_inotify_add_watch = 27;
enum NR_inotify_rm_watch = 28;
enum NR_ioctl = 29;
enum NR_ioprio_set = 30;
enum NR_ioprio_get = 31;
enum NR_flock = 32;
enum NR_mknodat = 33;
enum NR_mkdirat = 34;
enum NR_unlinkat = 35;
enum NR_symlinkat = 36;
enum NR_linkat = 37;
version(ARCH_WANT_RENAMEAT) enum NR_renameat = 38;
enum NR_umount2 = 39;
enum NR_mount = 40;
enum NR_pivot_root = 41;
enum NR_nfsservctl = 42;
enum NR3264_statfs = 43;
enum NR3264_fstatfs = 44;
enum NR3264_truncate = 45;
enum NR3264_ftruncate = 46;
enum NR_fallocate = 47;
enum NR_faccessat = 48;
enum NR_chdir = 49;
enum NR_fchdir = 50;
enum NR_chroot = 51;
enum NR_fchmod = 52;
enum NR_fchmodat = 53;
enum NR_fchownat = 54;
enum NR_fchown = 55;
enum NR_openat = 56;
enum NR_close = 57;
enum NR_vhangup = 58;
enum NR_pipe2 = 59;
enum NR_quotactl = 60;
enum NR_getdents64 = 61;
enum NR3264_lseek = 62;
enum NR_read = 63;
enum NR_write = 64;
enum NR_readv = 65;
enum NR_writev = 66;
enum NR_pread64 = 67;
enum NR_pwrite64 = 68;
enum NR_preadv = 69;
enum NR_pwritev = 70;
enum NR3264_sendfile = 71;
enum NR_pselect6 = 72;
enum NR_ppoll = 73;
enum NR_signalfd4 = 74;
enum NR_vmsplice = 75;
enum NR_splice = 76;
enum NR_tee = 77;
enum NR_readlinkat = 78;
enum NR3264_fstatat = 79;
enum NR3264_fstat = 80;
enum NR_sync = 81;
enum NR_fsync = 82;
enum NR_fdatasync = 83;
static if(ARCH_WANT_SYNC_FILE_RANGE2) enum NR_sync_file_range2 = 84;
else enum NR_sync_file_range = 84;
enum NR_timerfd_create = 85;
enum NR_timerfd_settime = 86;
enum NR_timerfd_gettime = 87;
enum NR_utimensat = 88;
enum NR_acct = 89;
enum NR_capget = 90;
enum NR_capset = 91;
enum NR_personality = 92;
enum NR_exit = 93;
enum NR_exit_group = 94;
enum NR_waitid = 95;
enum NR_set_tid_address = 96;
enum NR_unshare = 97;
enum NR_futex = 98;
enum NR_set_robust_list = 99;
enum NR_get_robust_list = 100;
enum NR_nanosleep = 101;
enum NR_getitimer = 102;
enum NR_setitimer = 103;
enum NR_kexec_load = 104;
enum NR_init_module = 105;
enum NR_delete_module = 106;
enum NR_timer_create = 107;
enum NR_timer_gettime = 108;
enum NR_timer_getoverrun = 109;
enum NR_timer_settime = 110;
enum NR_timer_delete = 111;
enum NR_clock_settime = 112;
enum NR_clock_gettime = 113;
enum NR_clock_getres = 114;
enum NR_clock_nanosleep = 115;
enum NR_syslog = 116;
enum NR_ptrace = 117;
enum NR_sched_setparam = 118;
enum NR_sched_setscheduler = 119;
enum NR_sched_getscheduler = 120;
enum NR_sched_getparam = 121;
enum NR_sched_setaffinity = 122;
enum NR_sched_getaffinity = 123;
enum NR_sched_yield = 124;
enum NR_sched_get_priority_max = 125;
enum NR_sched_get_priority_min = 126;
enum NR_sched_rr_get_interval = 127;
enum NR_restart_syscall = 128;
enum NR_kill = 129;
enum NR_tkill = 130;
enum NR_tgkill = 131;
enum NR_sigaltstack = 132;
enum NR_rt_sigsuspend = 133;
enum NR_rt_sigaction = 134;
enum NR_rt_sigprocmask = 135;
enum NR_rt_sigpending = 136;
enum NR_rt_sigtimedwait = 137;
enum NR_rt_sigqueueinfo = 138;
enum NR_rt_sigreturn = 139;
enum NR_setpriority = 140;
enum NR_getpriority = 141;
enum NR_reboot = 142;
enum NR_setregid = 143;
enum NR_setgid = 144;
enum NR_setreuid = 145;
enum NR_setuid = 146;
enum NR_setresuid = 147;
enum NR_getresuid = 148;
enum NR_setresgid = 149;
enum NR_getresgid = 150;
enum NR_setfsuid = 151;
enum NR_setfsgid = 152;
enum NR_times = 153;
enum NR_setpgid = 154;
enum NR_getpgid = 155;
enum NR_getsid = 156;
enum NR_setsid = 157;
enum NR_getgroups = 158;
enum NR_setgroups = 159;
enum NR_uname = 160;
enum NR_sethostname = 161;
enum NR_setdomainname = 162;
enum NR_getrlimit = 163;
enum NR_setrlimit = 164;
enum NR_getrusage = 165;
enum NR_umask = 166;
enum NR_prctl = 167;
enum NR_getcpu = 168;
enum NR_gettimeofday = 169;
enum NR_settimeofday = 170;
enum NR_adjtimex = 171;
enum NR_getpid = 172;
enum NR_getppid = 173;
enum NR_getuid = 174;
enum NR_geteuid = 175;
enum NR_getgid = 176;
enum NR_getegid = 177;
enum NR_gettid = 178;
enum NR_sysinfo = 179;
enum NR_mq_open = 180;
enum NR_mq_unlink = 181;
enum NR_mq_timedsend = 182;
enum NR_mq_timedreceive = 183;
enum NR_mq_notify = 184;
enum NR_mq_getsetattr = 185;
enum NR_msgget = 186;
enum NR_msgctl = 187;
enum NR_msgrcv = 188;
enum NR_msgsnd = 189;
enum NR_semget = 190;
enum NR_semctl = 191;
enum NR_semtimedop = 192;
enum NR_semop = 193;
enum NR_shmget = 194;
enum NR_shmctl = 195;
enum NR_shmat = 196;
enum NR_shmdt = 197;
enum NR_socket = 198;
enum NR_socketpair = 199;
enum NR_bind = 200;
enum NR_listen = 201;
enum NR_accept = 202;
enum NR_connect = 203;
enum NR_getsockname = 204;
enum NR_getpeername = 205;
enum NR_sendto = 206;
enum NR_recvfrom = 207;
enum NR_setsockopt = 208;
enum NR_getsockopt = 209;
enum NR_shutdown = 210;
enum NR_sendmsg = 211;
enum NR_recvmsg = 212;
enum NR_readahead = 213;
enum NR_brk = 214;
enum NR_munmap = 215;
enum NR_mremap = 216;
enum NR_add_key = 217;
enum NR_request_key = 218;
enum NR_keyctl = 219;
enum NR_clone = 220;
enum NR_execve = 221;
enum NR3264_mmap = 222;
enum NR3264_fadvise64 = 223;
version(ARCH_NOMMU) {} else { enum NR_swapoff = 225; }
version(ARCH_NOMMU) {} else { enum NR_mprotect = 226; }
version(ARCH_NOMMU) {} else { enum NR_msync = 227; }
version(ARCH_NOMMU) {} else { enum NR_mlock = 228; }
version(ARCH_NOMMU) {} else { enum NR_munlock = 229; }
version(ARCH_NOMMU) {} else { enum NR_mlockall = 230; }
version(ARCH_NOMMU) {} else { enum NR_munlockall = 231; }
version(ARCH_NOMMU) {} else { enum NR_mincore = 232; }
version(ARCH_NOMMU) {} else { enum NR_madvise = 233; }
version(ARCH_NOMMU) {} else { enum NR_remap_file_pages = 234; }
version(ARCH_NOMMU) {} else { enum NR_mbind = 235; }
version(ARCH_NOMMU) {} else { enum NR_get_mempolicy = 236; }
version(ARCH_NOMMU) {} else { enum NR_set_mempolicy = 237; }
version(ARCH_NOMMU) {} else { enum NR_migrate_pages = 238; }
version(ARCH_NOMMU) {} else { enum NR_move_pages = 239; }
enum NR_rt_tgsigqueueinfo = 240;
enum NR_perf_event_open = 241;
enum NR_accept4 = 242;
enum NR_recvmmsg = 243;
enum NR_arch_specific_syscall = 244;
enum NR_wait4 = 260;
enum NR_prlimit64 = 261;
enum NR_fanotify_init = 262;
enum NR_fanotify_mark = 263;
enum NR_name_to_handle_at = 264;
enum NR_open_by_handle_at = 265;
enum NR_clock_adjtime = 266;
enum NR_syncfs = 267;
enum NR_setns = 268;
enum NR_sendmmsg = 269;
enum NR_process_vm_readv = 270;
enum NR_process_vm_writev = 271;
enum NR_kcmp = 272;
enum NR_finit_module = 273;
enum NR_sched_setattr = 274;
enum NR_sched_getattr = 275;
enum NR_renameat2 = 276;
enum NR_seccomp = 277;
enum NR_getrandom = 278;
enum NR_memfd_create = 279;
enum NR_bpf = 280;
enum NR_execveat = 281;
enum NR_userfaultfd = 282;
enum NR_membarrier = 283;
enum NR_mlock2 = 284;
enum NR_copy_file_range = 285;
enum NR_preadv2 = 286;
enum NR_pwritev2 = 287;
enum NR_pkey_mprotect = 288;
enum NR_pkey_alloc = 289;
enum NR_pkey_free = 290;
enum NR_statx = 291;
enum NR_io_pgetevents = 292;
enum NR_rseq = 293;
enum NR_kexec_file_load = 294;

static if (size_t.sizeof == 4)
{
    enum NR_clock_gettime64 = 403;
    enum NR_clock_settime64 = 404;
    enum NR_clock_adjtime64 = 405;
    enum NR_clock_getres_time64 = 406;
    enum NR_clock_nanosleep_time64 = 407;
    enum NR_timer_gettime64 = 408;
    enum NR_timer_settime64 = 409;
    enum NR_timerfd_gettime64 = 410;
    enum NR_timerfd_settime64 = 411;
    enum NR_utimensat_time64 = 412;
    enum NR_pselect6_time64 = 413;
    enum NR_ppoll_time64 = 414;
    enum NR_io_pgetevents_time64 = 416;
    enum NR_recvmmsg_time64 = 417;
    enum NR_mq_timedsend_time64 = 418;
    enum NR_mq_timedreceive_time64 = 419;
    enum NR_semtimedop_time64 = 420;
    enum NR_rt_sigtimedwait_time64 = 421;
    enum NR_futex_time64 = 422;
    enum NR_sched_rr_get_interval_time64 = 423;
}

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
version (ARCH_WANT_SYS_CLONE3) enum NR_clone3 = 435;
enum NR_openat2 = 437;
enum NR_pidfd_getfd = 438;

//enum NR_syscalls = 292;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_open = 1024;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_link = 1025;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_unlink = 1026;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_mknod = 1027;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_chmod = 1028;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_chown = 1029;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_mkdir = 1030;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_rmdir = 1031;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_lchown = 1032;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_access = 1033;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_rename = 1034;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_readlink = 1035;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_symlink = 1036;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR_utimes = 1037;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR3264_stat = 1038;
version(ARCH_WANT_SYSCALL_NO_AT) enum NR3264_lstat = 1039;
//enum NR_syscalls = (NR3264_lstat+1);
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_pipe = 1040;
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_dup2 = 1041;
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_epoll_create = 1042;
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_inotify_init = 1043;
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_eventfd = 1044;
version(ARCH_WANT_SYSCALL_NO_FLAGS) enum NR_signalfd = 1045;
//enum NR_syscalls = (NR_signalfd+1);
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_sendfile = 1046;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_ftruncate = 1047;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_truncate = 1048;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_stat = 1049;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_lstat = 1050;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_fstat = 1051;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_fcntl = 1052;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_fadvise64 = 1053;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_newfstatat = 1054;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_fstatfs = 1055;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_statfs = 1056;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_lseek = 1057;
static if(SYSCALL_COMPAT) version(ARCH_WANT_SYSCALL_OFF_T) enum NR_mmap = 1058;
//enum NR_syscalls = (NR_mmap+1);
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_alarm = 1059;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_getpgrp = 1060;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_pause = 1061;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_time = 1062;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_utime = 1063;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_creat = 1064;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_getdents = 1065;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_futimesat = 1066;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_select = 1067;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_poll = 1068;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_epoll_wait = 1069;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_ustat = 1070;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_vfork = 1071;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_oldwait4 = 1072;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_recv = 1073;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_send = 1074;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_bdflush = 1075;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_umount = 1076;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR_uselib = 1077;
version(ARCH_WANT_SYSCALL_DEPRECATED) enum NR__sysctl = 1078;
enum NR_fork = 1079;
enum NR_syscalls = (NR_fork+1);
static if (size_t.sizeof == 8 && !SYSCALL_COMPAT)
{
    enum NR_fcntl = NR3264_fcntl;
    enum NR_statfs = NR3264_statfs;
    enum NR_fstatfs = NR3264_fstatfs;
    enum NR_truncate = NR3264_truncate;
    enum NR_ftruncate = NR3264_ftruncate;
    enum NR_lseek = NR3264_lseek;
    enum NR_sendfile = NR3264_sendfile;
    enum NR_newfstatat = NR3264_fstatat;
    enum NR_fstat = NR3264_fstat;
    enum NR_mmap = NR3264_mmap;
    enum NR_fadvise64 = NR3264_fadvise64;
    static if (__traits(compiles, {enum e = NR3264_stat;})) enum NR_stat = NR3264_stat;
    static if (__traits(compiles, {enum e = NR3264_stat;})) enum NR_lstat = NR3264_lstat;
}
else
{
    enum NR_fcntl64 = NR3264_fcntl;
    enum NR_statfs64 = NR3264_statfs;
    enum NR_fstatfs64 = NR3264_fstatfs;
    enum NR_truncate64 = NR3264_truncate;
    enum NR_ftruncate64 = NR3264_ftruncate;
    enum NR_llseek = NR3264_lseek;
    enum NR_sendfile64 = NR3264_sendfile;
    enum NR_fstatat64 = NR3264_fstatat;
    enum NR_fstat64 = NR3264_fstat;
    enum NR_mmap2 = NR3264_mmap;
    enum NR_fadvise64_64 = NR3264_fadvise64;
    static if (__traits(compiles, {enum e = NR3264_stat;})) enum NR_stat64 = NR3264_stat;
    static if (__traits(compiles, {enum e = NR3264_stat;})) enum NR_lstat64 = NR3264_lstat;
}
