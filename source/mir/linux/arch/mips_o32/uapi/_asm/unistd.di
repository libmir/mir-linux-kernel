/++
Auto-generated Linux syscall constants for MIPS_O32
+/
module mir.linux.arch.mips_o32.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_syscall = 4000;
enum NR_exit = 4001;
enum NR_fork = 4002;
enum NR_read = 4003;
enum NR_write = 4004;
enum NR_open = 4005;
enum NR_close = 4006;
enum NR_waitpid = 4007;
enum NR_creat = 4008;
enum NR_link = 4009;
enum NR_unlink = 4010;
enum NR_execve = 4011;
enum NR_chdir = 4012;
enum NR_time = 4013;
enum NR_mknod = 4014;
enum NR_chmod = 4015;
enum NR_lchown = 4016;
enum NR_break = 4017;
enum NR_unused18 = 4018;
enum NR_lseek = 4019;
enum NR_getpid = 4020;
enum NR_mount = 4021;
enum NR_umount = 4022;
enum NR_setuid = 4023;
enum NR_getuid = 4024;
enum NR_stime = 4025;
enum NR_ptrace = 4026;
enum NR_alarm = 4027;
enum NR_unused28 = 4028;
enum NR_pause = 4029;
enum NR_utime = 4030;
enum NR_stty = 4031;
enum NR_gtty = 4032;
enum NR_access = 4033;
enum NR_nice = 4034;
enum NR_ftime = 4035;
enum NR_sync = 4036;
enum NR_kill = 4037;
enum NR_rename = 4038;
enum NR_mkdir = 4039;
enum NR_rmdir = 4040;
enum NR_dup = 4041;
enum NR_pipe = 4042;
enum NR_times = 4043;
enum NR_prof = 4044;
enum NR_brk = 4045;
enum NR_setgid = 4046;
enum NR_getgid = 4047;
enum NR_signal = 4048;
enum NR_geteuid = 4049;
enum NR_getegid = 4050;
enum NR_acct = 4051;
enum NR_umount2 = 4052;
enum NR_lock = 4053;
enum NR_ioctl = 4054;
enum NR_fcntl = 4055;
enum NR_mpx = 4056;
enum NR_setpgid = 4057;
enum NR_ulimit = 4058;
enum NR_unused59 = 4059;
enum NR_umask = 4060;
enum NR_chroot = 4061;
enum NR_ustat = 4062;
enum NR_dup2 = 4063;
enum NR_getppid = 4064;
enum NR_getpgrp = 4065;
enum NR_setsid = 4066;
enum NR_sigaction = 4067;
enum NR_sgetmask = 4068;
enum NR_ssetmask = 4069;
enum NR_setreuid = 4070;
enum NR_setregid = 4071;
enum NR_sigsuspend = 4072;
enum NR_sigpending = 4073;
enum NR_sethostname = 4074;
enum NR_setrlimit = 4075;
enum NR_getrlimit = 4076;
enum NR_getrusage = 4077;
enum NR_gettimeofday = 4078;
enum NR_settimeofday = 4079;
enum NR_getgroups = 4080;
enum NR_setgroups = 4081;
enum NR_reserved82 = 4082;
enum NR_symlink = 4083;
enum NR_unused84 = 4084;
enum NR_readlink = 4085;
enum NR_uselib = 4086;
enum NR_swapon = 4087;
enum NR_reboot = 4088;
enum NR_readdir = 4089;
enum NR_mmap = 4090;
enum NR_munmap = 4091;
enum NR_truncate = 4092;
enum NR_ftruncate = 4093;
enum NR_fchmod = 4094;
enum NR_fchown = 4095;
enum NR_getpriority = 4096;
enum NR_setpriority = 4097;
enum NR_profil = 4098;
enum NR_statfs = 4099;
enum NR_fstatfs = 4100;
enum NR_ioperm = 4101;
enum NR_socketcall = 4102;
enum NR_syslog = 4103;
enum NR_setitimer = 4104;
enum NR_getitimer = 4105;
enum NR_stat = 4106;
enum NR_lstat = 4107;
enum NR_fstat = 4108;
enum NR_unused109 = 4109;
enum NR_iopl = 4110;
enum NR_vhangup = 4111;
enum NR_idle = 4112;
enum NR_vm86 = 4113;
enum NR_wait4 = 4114;
enum NR_swapoff = 4115;
enum NR_sysinfo = 4116;
enum NR_ipc = 4117;
enum NR_fsync = 4118;
enum NR_sigreturn = 4119;
enum NR_clone = 4120;
enum NR_setdomainname = 4121;
enum NR_uname = 4122;
enum NR_modify_ldt = 4123;
enum NR_adjtimex = 4124;
enum NR_mprotect = 4125;
enum NR_sigprocmask = 4126;
enum NR_create_module = 4127;
enum NR_init_module = 4128;
enum NR_delete_module = 4129;
enum NR_get_kernel_syms = 4130;
enum NR_quotactl = 4131;
enum NR_getpgid = 4132;
enum NR_fchdir = 4133;
enum NR_bdflush = 4134;
enum NR_sysfs = 4135;
enum NR_personality = 4136;
enum NR_afs_syscall = 4137;
enum NR_setfsuid = 4138;
enum NR_setfsgid = 4139;
enum NR__llseek = 4140;
enum NR_getdents = 4141;
enum NR__newselect = 4142;
enum NR_flock = 4143;
enum NR_msync = 4144;
enum NR_readv = 4145;
enum NR_writev = 4146;
enum NR_cacheflush = 4147;
enum NR_cachectl = 4148;
enum NR_sysmips = 4149;
enum NR_unused150 = 4150;
enum NR_getsid = 4151;
enum NR_fdatasync = 4152;
enum NR__sysctl = 4153;
enum NR_mlock = 4154;
enum NR_munlock = 4155;
enum NR_mlockall = 4156;
enum NR_munlockall = 4157;
enum NR_sched_setparam = 4158;
enum NR_sched_getparam = 4159;
enum NR_sched_setscheduler = 4160;
enum NR_sched_getscheduler = 4161;
enum NR_sched_yield = 4162;
enum NR_sched_get_priority_max = 4163;
enum NR_sched_get_priority_min = 4164;
enum NR_sched_rr_get_interval = 4165;
enum NR_nanosleep = 4166;
enum NR_mremap = 4167;
enum NR_accept = 4168;
enum NR_bind = 4169;
enum NR_connect = 4170;
enum NR_getpeername = 4171;
enum NR_getsockname = 4172;
enum NR_getsockopt = 4173;
enum NR_listen = 4174;
enum NR_recv = 4175;
enum NR_recvfrom = 4176;
enum NR_recvmsg = 4177;
enum NR_send = 4178;
enum NR_sendmsg = 4179;
enum NR_sendto = 4180;
enum NR_setsockopt = 4181;
enum NR_shutdown = 4182;
enum NR_socket = 4183;
enum NR_socketpair = 4184;
enum NR_setresuid = 4185;
enum NR_getresuid = 4186;
enum NR_query_module = 4187;
enum NR_poll = 4188;
enum NR_nfsservctl = 4189;
enum NR_setresgid = 4190;
enum NR_getresgid = 4191;
enum NR_prctl = 4192;
enum NR_rt_sigreturn = 4193;
enum NR_rt_sigaction = 4194;
enum NR_rt_sigprocmask = 4195;
enum NR_rt_sigpending = 4196;
enum NR_rt_sigtimedwait = 4197;
enum NR_rt_sigqueueinfo = 4198;
enum NR_rt_sigsuspend = 4199;
enum NR_pread64 = 4200;
enum NR_pwrite64 = 4201;
enum NR_chown = 4202;
enum NR_getcwd = 4203;
enum NR_capget = 4204;
enum NR_capset = 4205;
enum NR_sigaltstack = 4206;
enum NR_sendfile = 4207;
enum NR_getpmsg = 4208;
enum NR_putpmsg = 4209;
enum NR_mmap2 = 4210;
enum NR_truncate64 = 4211;
enum NR_ftruncate64 = 4212;
enum NR_stat64 = 4213;
enum NR_lstat64 = 4214;
enum NR_fstat64 = 4215;
enum NR_pivot_root = 4216;
enum NR_mincore = 4217;
enum NR_madvise = 4218;
enum NR_getdents64 = 4219;
enum NR_fcntl64 = 4220;
enum NR_reserved221 = 4221;
enum NR_gettid = 4222;
enum NR_readahead = 4223;
enum NR_setxattr = 4224;
enum NR_lsetxattr = 4225;
enum NR_fsetxattr = 4226;
enum NR_getxattr = 4227;
enum NR_lgetxattr = 4228;
enum NR_fgetxattr = 4229;
enum NR_listxattr = 4230;
enum NR_llistxattr = 4231;
enum NR_flistxattr = 4232;
enum NR_removexattr = 4233;
enum NR_lremovexattr = 4234;
enum NR_fremovexattr = 4235;
enum NR_tkill = 4236;
enum NR_sendfile64 = 4237;
enum NR_futex = 4238;
enum NR_sched_setaffinity = 4239;
enum NR_sched_getaffinity = 4240;
enum NR_io_setup = 4241;
enum NR_io_destroy = 4242;
enum NR_io_getevents = 4243;
enum NR_io_submit = 4244;
enum NR_io_cancel = 4245;
enum NR_exit_group = 4246;
enum NR_lookup_dcookie = 4247;
enum NR_epoll_create = 4248;
enum NR_epoll_ctl = 4249;
enum NR_epoll_wait = 4250;
enum NR_remap_file_pages = 4251;
enum NR_set_tid_address = 4252;
enum NR_restart_syscall = 4253;
enum NR_fadvise64 = 4254;
enum NR_statfs64 = 4255;
enum NR_fstatfs64 = 4256;
enum NR_timer_create = 4257;
enum NR_timer_settime = 4258;
enum NR_timer_gettime = 4259;
enum NR_timer_getoverrun = 4260;
enum NR_timer_delete = 4261;
enum NR_clock_settime = 4262;
enum NR_clock_gettime = 4263;
enum NR_clock_getres = 4264;
enum NR_clock_nanosleep = 4265;
enum NR_tgkill = 4266;
enum NR_utimes = 4267;
enum NR_mbind = 4268;
enum NR_get_mempolicy = 4269;
enum NR_set_mempolicy = 4270;
enum NR_mq_open = 4271;
enum NR_mq_unlink = 4272;
enum NR_mq_timedsend = 4273;
enum NR_mq_timedreceive = 4274;
enum NR_mq_notify = 4275;
enum NR_mq_getsetattr = 4276;
enum NR_vserver = 4277;
enum NR_waitid = 4278;
enum NR_add_key = 4280;
enum NR_request_key = 4281;
enum NR_keyctl = 4282;
enum NR_set_thread_area = 4283;
enum NR_inotify_init = 4284;
enum NR_inotify_add_watch = 4285;
enum NR_inotify_rm_watch = 4286;
enum NR_migrate_pages = 4287;
enum NR_openat = 4288;
enum NR_mkdirat = 4289;
enum NR_mknodat = 4290;
enum NR_fchownat = 4291;
enum NR_futimesat = 4292;
enum NR_fstatat64 = 4293;
enum NR_unlinkat = 4294;
enum NR_renameat = 4295;
enum NR_linkat = 4296;
enum NR_symlinkat = 4297;
enum NR_readlinkat = 4298;
enum NR_fchmodat = 4299;
enum NR_faccessat = 4300;
enum NR_pselect6 = 4301;
enum NR_ppoll = 4302;
enum NR_unshare = 4303;
enum NR_splice = 4304;
enum NR_sync_file_range = 4305;
enum NR_tee = 4306;
enum NR_vmsplice = 4307;
enum NR_move_pages = 4308;
enum NR_set_robust_list = 4309;
enum NR_get_robust_list = 4310;
enum NR_kexec_load = 4311;
enum NR_getcpu = 4312;
enum NR_epoll_pwait = 4313;
enum NR_ioprio_set = 4314;
enum NR_ioprio_get = 4315;
enum NR_utimensat = 4316;
enum NR_signalfd = 4317;
enum NR_timerfd = 4318;
enum NR_eventfd = 4319;
enum NR_fallocate = 4320;
enum NR_timerfd_create = 4321;
enum NR_timerfd_gettime = 4322;
enum NR_timerfd_settime = 4323;
enum NR_signalfd4 = 4324;
enum NR_eventfd2 = 4325;
enum NR_epoll_create1 = 4326;
enum NR_dup3 = 4327;
enum NR_pipe2 = 4328;
enum NR_inotify_init1 = 4329;
enum NR_preadv = 4330;
enum NR_pwritev = 4331;
enum NR_rt_tgsigqueueinfo = 4332;
enum NR_perf_event_open = 4333;
enum NR_accept4 = 4334;
enum NR_recvmmsg = 4335;
enum NR_fanotify_init = 4336;
enum NR_fanotify_mark = 4337;
enum NR_prlimit64 = 4338;
enum NR_name_to_handle_at = 4339;
enum NR_open_by_handle_at = 4340;
enum NR_clock_adjtime = 4341;
enum NR_syncfs = 4342;
enum NR_sendmmsg = 4343;
enum NR_setns = 4344;
enum NR_process_vm_readv = 4345;
enum NR_process_vm_writev = 4346;
enum NR_kcmp = 4347;
enum NR_finit_module = 4348;
enum NR_sched_setattr = 4349;
enum NR_sched_getattr = 4350;
enum NR_renameat2 = 4351;
enum NR_seccomp = 4352;
enum NR_getrandom = 4353;
enum NR_memfd_create = 4354;
enum NR_bpf = 4355;
enum NR_execveat = 4356;
enum NR_userfaultfd = 4357;
enum NR_membarrier = 4358;
enum NR_mlock2 = 4359;
enum NR_copy_file_range = 4360;
enum NR_preadv2 = 4361;
enum NR_pwritev2 = 4362;
enum NR_pkey_mprotect = 4363;
enum NR_pkey_alloc = 4364;
enum NR_pkey_free = 4365;
enum NR_statx = 4366;
enum NR_rseq = 4367;
enum NR_io_pgetevents = 4368;
enum NR_semget = 4393;
enum NR_semctl = 4394;
enum NR_shmget = 4395;
enum NR_shmctl = 4396;
enum NR_shmat = 4397;
enum NR_shmdt = 4398;
enum NR_msgget = 4399;
enum NR_msgsnd = 4400;
enum NR_msgrcv = 4401;
enum NR_msgctl = 4402;
enum NR_clock_gettime64 = 4403;
enum NR_clock_settime64 = 4404;
enum NR_clock_adjtime64 = 4405;
enum NR_clock_getres_time64 = 4406;
enum NR_clock_nanosleep_time64 = 4407;
enum NR_timer_gettime64 = 4408;
enum NR_timer_settime64 = 4409;
enum NR_timerfd_gettime64 = 4410;
enum NR_timerfd_settime64 = 4411;
enum NR_utimensat_time64 = 4412;
enum NR_pselect6_time64 = 4413;
enum NR_ppoll_time64 = 4414;
enum NR_io_pgetevents_time64 = 4416;
enum NR_recvmmsg_time64 = 4417;
enum NR_mq_timedsend_time64 = 4418;
enum NR_mq_timedreceive_time64 = 4419;
enum NR_semtimedop_time64 = 4420;
enum NR_rt_sigtimedwait_time64 = 4421;
enum NR_futex_time64 = 4422;
enum NR_sched_rr_get_interval_time64 = 4423;
enum NR_pidfd_send_signal = 4424;
enum NR_io_uring_setup = 4425;
enum NR_io_uring_enter = 4426;
enum NR_io_uring_register = 4427;
enum NR_open_tree = 4428;
enum NR_move_mount = 4429;
enum NR_fsopen = 4430;
enum NR_fsconfig = 4431;
enum NR_fsmount = 4432;
enum NR_fspick = 4433;
enum NR_pidfd_open = 4434;
enum NR_clone3 = 4435;
enum NR_close_range = 4436;
enum NR_openat2 = 4437;
enum NR_pidfd_getfd = 4438;
enum NR_faccessat2 = 4439;
enum NR_process_madvise = 4440;
enum NR_epoll_pwait2 = 4441;
enum NR_mount_setattr = 4442;
enum NR_quotactl_fd = 4443;
enum NR_landlock_create_ruleset = 4444;
enum NR_landlock_add_rule = 4445;
enum NR_landlock_restrict_self = 4446;
enum NR_process_mrelease = 4448;
