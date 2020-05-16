/++
Auto-generated Linux syscall constants for MIPS64
+/
module mir.linux.arch.mips64.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_read = 5000;
enum NR_write = 5001;
enum NR_open = 5002;
enum NR_close = 5003;
enum NR_stat = 5004;
enum NR_fstat = 5005;
enum NR_lstat = 5006;
enum NR_poll = 5007;
enum NR_lseek = 5008;
enum NR_mmap = 5009;
enum NR_mprotect = 5010;
enum NR_munmap = 5011;
enum NR_brk = 5012;
enum NR_rt_sigaction = 5013;
enum NR_rt_sigprocmask = 5014;
enum NR_ioctl = 5015;
enum NR_pread64 = 5016;
enum NR_pwrite64 = 5017;
enum NR_readv = 5018;
enum NR_writev = 5019;
enum NR_access = 5020;
enum NR_pipe = 5021;
enum NR__newselect = 5022;
enum NR_sched_yield = 5023;
enum NR_mremap = 5024;
enum NR_msync = 5025;
enum NR_mincore = 5026;
enum NR_madvise = 5027;
enum NR_shmget = 5028;
enum NR_shmat = 5029;
enum NR_shmctl = 5030;
enum NR_dup = 5031;
enum NR_dup2 = 5032;
enum NR_pause = 5033;
enum NR_nanosleep = 5034;
enum NR_getitimer = 5035;
enum NR_setitimer = 5036;
enum NR_alarm = 5037;
enum NR_getpid = 5038;
enum NR_sendfile = 5039;
enum NR_socket = 5040;
enum NR_connect = 5041;
enum NR_accept = 5042;
enum NR_sendto = 5043;
enum NR_recvfrom = 5044;
enum NR_sendmsg = 5045;
enum NR_recvmsg = 5046;
enum NR_shutdown = 5047;
enum NR_bind = 5048;
enum NR_listen = 5049;
enum NR_getsockname = 5050;
enum NR_getpeername = 5051;
enum NR_socketpair = 5052;
enum NR_setsockopt = 5053;
enum NR_getsockopt = 5054;
enum NR_clone = 5055;
enum NR_fork = 5056;
enum NR_execve = 5057;
enum NR_exit = 5058;
enum NR_wait4 = 5059;
enum NR_kill = 5060;
enum NR_uname = 5061;
enum NR_semget = 5062;
enum NR_semop = 5063;
enum NR_semctl = 5064;
enum NR_shmdt = 5065;
enum NR_msgget = 5066;
enum NR_msgsnd = 5067;
enum NR_msgrcv = 5068;
enum NR_msgctl = 5069;
enum NR_fcntl = 5070;
enum NR_flock = 5071;
enum NR_fsync = 5072;
enum NR_fdatasync = 5073;
enum NR_truncate = 5074;
enum NR_ftruncate = 5075;
enum NR_getdents = 5076;
enum NR_getcwd = 5077;
enum NR_chdir = 5078;
enum NR_fchdir = 5079;
enum NR_rename = 5080;
enum NR_mkdir = 5081;
enum NR_rmdir = 5082;
enum NR_creat = 5083;
enum NR_link = 5084;
enum NR_unlink = 5085;
enum NR_symlink = 5086;
enum NR_readlink = 5087;
enum NR_chmod = 5088;
enum NR_fchmod = 5089;
enum NR_chown = 5090;
enum NR_fchown = 5091;
enum NR_lchown = 5092;
enum NR_umask = 5093;
enum NR_gettimeofday = 5094;
enum NR_getrlimit = 5095;
enum NR_getrusage = 5096;
enum NR_sysinfo = 5097;
enum NR_times = 5098;
enum NR_ptrace = 5099;
enum NR_getuid = 5100;
enum NR_syslog = 5101;
enum NR_getgid = 5102;
enum NR_setuid = 5103;
enum NR_setgid = 5104;
enum NR_geteuid = 5105;
enum NR_getegid = 5106;
enum NR_setpgid = 5107;
enum NR_getppid = 5108;
enum NR_getpgrp = 5109;
enum NR_setsid = 5110;
enum NR_setreuid = 5111;
enum NR_setregid = 5112;
enum NR_getgroups = 5113;
enum NR_setgroups = 5114;
enum NR_setresuid = 5115;
enum NR_getresuid = 5116;
enum NR_setresgid = 5117;
enum NR_getresgid = 5118;
enum NR_getpgid = 5119;
enum NR_setfsuid = 5120;
enum NR_setfsgid = 5121;
enum NR_getsid = 5122;
enum NR_capget = 5123;
enum NR_capset = 5124;
enum NR_rt_sigpending = 5125;
enum NR_rt_sigtimedwait = 5126;
enum NR_rt_sigqueueinfo = 5127;
enum NR_rt_sigsuspend = 5128;
enum NR_sigaltstack = 5129;
enum NR_utime = 5130;
enum NR_mknod = 5131;
enum NR_personality = 5132;
enum NR_ustat = 5133;
enum NR_statfs = 5134;
enum NR_fstatfs = 5135;
enum NR_sysfs = 5136;
enum NR_getpriority = 5137;
enum NR_setpriority = 5138;
enum NR_sched_setparam = 5139;
enum NR_sched_getparam = 5140;
enum NR_sched_setscheduler = 5141;
enum NR_sched_getscheduler = 5142;
enum NR_sched_get_priority_max = 5143;
enum NR_sched_get_priority_min = 5144;
enum NR_sched_rr_get_interval = 5145;
enum NR_mlock = 5146;
enum NR_munlock = 5147;
enum NR_mlockall = 5148;
enum NR_munlockall = 5149;
enum NR_vhangup = 5150;
enum NR_pivot_root = 5151;
enum NR__sysctl = 5152;
enum NR_prctl = 5153;
enum NR_adjtimex = 5154;
enum NR_setrlimit = 5155;
enum NR_chroot = 5156;
enum NR_sync = 5157;
enum NR_acct = 5158;
enum NR_settimeofday = 5159;
enum NR_mount = 5160;
enum NR_umount2 = 5161;
enum NR_swapon = 5162;
enum NR_swapoff = 5163;
enum NR_reboot = 5164;
enum NR_sethostname = 5165;
enum NR_setdomainname = 5166;
enum NR_create_module = 5167;
enum NR_init_module = 5168;
enum NR_delete_module = 5169;
enum NR_get_kernel_syms = 5170;
enum NR_query_module = 5171;
enum NR_quotactl = 5172;
enum NR_nfsservctl = 5173;
enum NR_getpmsg = 5174;
enum NR_putpmsg = 5175;
enum NR_afs_syscall = 5176;
enum NR_reserved177 = 5177;
enum NR_gettid = 5178;
enum NR_readahead = 5179;
enum NR_setxattr = 5180;
enum NR_lsetxattr = 5181;
enum NR_fsetxattr = 5182;
enum NR_getxattr = 5183;
enum NR_lgetxattr = 5184;
enum NR_fgetxattr = 5185;
enum NR_listxattr = 5186;
enum NR_llistxattr = 5187;
enum NR_flistxattr = 5188;
enum NR_removexattr = 5189;
enum NR_lremovexattr = 5190;
enum NR_fremovexattr = 5191;
enum NR_tkill = 5192;
enum NR_reserved193 = 5193;
enum NR_futex = 5194;
enum NR_sched_setaffinity = 5195;
enum NR_sched_getaffinity = 5196;
enum NR_cacheflush = 5197;
enum NR_cachectl = 5198;
enum NR_sysmips = 5199;
enum NR_io_setup = 5200;
enum NR_io_destroy = 5201;
enum NR_io_getevents = 5202;
enum NR_io_submit = 5203;
enum NR_io_cancel = 5204;
enum NR_exit_group = 5205;
enum NR_lookup_dcookie = 5206;
enum NR_epoll_create = 5207;
enum NR_epoll_ctl = 5208;
enum NR_epoll_wait = 5209;
enum NR_remap_file_pages = 5210;
enum NR_rt_sigreturn = 5211;
enum NR_set_tid_address = 5212;
enum NR_restart_syscall = 5213;
enum NR_semtimedop = 5214;
enum NR_fadvise64 = 5215;
enum NR_timer_create = 5216;
enum NR_timer_settime = 5217;
enum NR_timer_gettime = 5218;
enum NR_timer_getoverrun = 5219;
enum NR_timer_delete = 5220;
enum NR_clock_settime = 5221;
enum NR_clock_gettime = 5222;
enum NR_clock_getres = 5223;
enum NR_clock_nanosleep = 5224;
enum NR_tgkill = 5225;
enum NR_utimes = 5226;
enum NR_mbind = 5227;
enum NR_get_mempolicy = 5228;
enum NR_set_mempolicy = 5229;
enum NR_mq_open = 5230;
enum NR_mq_unlink = 5231;
enum NR_mq_timedsend = 5232;
enum NR_mq_timedreceive = 5233;
enum NR_mq_notify = 5234;
enum NR_mq_getsetattr = 5235;
enum NR_vserver = 5236;
enum NR_waitid = 5237;
enum NR_add_key = 5239;
enum NR_request_key = 5240;
enum NR_keyctl = 5241;
enum NR_set_thread_area = 5242;
enum NR_inotify_init = 5243;
enum NR_inotify_add_watch = 5244;
enum NR_inotify_rm_watch = 5245;
enum NR_migrate_pages = 5246;
enum NR_openat = 5247;
enum NR_mkdirat = 5248;
enum NR_mknodat = 5249;
enum NR_fchownat = 5250;
enum NR_futimesat = 5251;
enum NR_newfstatat = 5252;
enum NR_unlinkat = 5253;
enum NR_renameat = 5254;
enum NR_linkat = 5255;
enum NR_symlinkat = 5256;
enum NR_readlinkat = 5257;
enum NR_fchmodat = 5258;
enum NR_faccessat = 5259;
enum NR_pselect6 = 5260;
enum NR_ppoll = 5261;
enum NR_unshare = 5262;
enum NR_splice = 5263;
enum NR_sync_file_range = 5264;
enum NR_tee = 5265;
enum NR_vmsplice = 5266;
enum NR_move_pages = 5267;
enum NR_set_robust_list = 5268;
enum NR_get_robust_list = 5269;
enum NR_kexec_load = 5270;
enum NR_getcpu = 5271;
enum NR_epoll_pwait = 5272;
enum NR_ioprio_set = 5273;
enum NR_ioprio_get = 5274;
enum NR_utimensat = 5275;
enum NR_signalfd = 5276;
enum NR_timerfd = 5277;
enum NR_eventfd = 5278;
enum NR_fallocate = 5279;
enum NR_timerfd_create = 5280;
enum NR_timerfd_gettime = 5281;
enum NR_timerfd_settime = 5282;
enum NR_signalfd4 = 5283;
enum NR_eventfd2 = 5284;
enum NR_epoll_create1 = 5285;
enum NR_dup3 = 5286;
enum NR_pipe2 = 5287;
enum NR_inotify_init1 = 5288;
enum NR_preadv = 5289;
enum NR_pwritev = 5290;
enum NR_rt_tgsigqueueinfo = 5291;
enum NR_perf_event_open = 5292;
enum NR_accept4 = 5293;
enum NR_recvmmsg = 5294;
enum NR_fanotify_init = 5295;
enum NR_fanotify_mark = 5296;
enum NR_prlimit64 = 5297;
enum NR_name_to_handle_at = 5298;
enum NR_open_by_handle_at = 5299;
enum NR_clock_adjtime = 5300;
enum NR_syncfs = 5301;
enum NR_sendmmsg = 5302;
enum NR_setns = 5303;
enum NR_process_vm_readv = 5304;
enum NR_process_vm_writev = 5305;
enum NR_kcmp = 5306;
enum NR_finit_module = 5307;
enum NR_getdents64 = 5308;
enum NR_sched_setattr = 5309;
enum NR_sched_getattr = 5310;
enum NR_renameat2 = 5311;
enum NR_seccomp = 5312;
enum NR_getrandom = 5313;
enum NR_memfd_create = 5314;
enum NR_bpf = 5315;
enum NR_execveat = 5316;
enum NR_userfaultfd = 5317;
enum NR_membarrier = 5318;
enum NR_mlock2 = 5319;
enum NR_copy_file_range = 5320;
enum NR_preadv2 = 5321;
enum NR_pwritev2 = 5322;
enum NR_pkey_mprotect = 5323;
enum NR_pkey_alloc = 5324;
enum NR_pkey_free = 5325;
enum NR_statx = 5326;
enum NR_rseq = 5327;
enum NR_io_pgetevents = 5328;
enum NR_pidfd_send_signal = 5424;
enum NR_io_uring_setup = 5425;
enum NR_io_uring_enter = 5426;
enum NR_io_uring_register = 5427;
enum NR_open_tree = 5428;
enum NR_move_mount = 5429;
enum NR_fsopen = 5430;
enum NR_fsconfig = 5431;
enum NR_fsmount = 5432;
enum NR_fspick = 5433;
enum NR_pidfd_open = 5434;
enum NR_clone3 = 5435;
enum NR_openat2 = 5437;
enum NR_pidfd_getfd = 5438;
