# Linux Internals

## Process Structure and IPC

* pid: process id
* parent (pid)
* tty: teletyprewriter
* uid, gid: user/group id
* euid, egid: effective user/group id

* priority
* rlimits
* open files
* memory map
* signal mask, signal handlers
* time (start, elapsed time counters)
* ./include/linux/sched.h `struct taks_struct{}`

* Operations over process:
    * Send a signal `kill`
    * Get information about it `ps/proc`
    * Trace it `strace`