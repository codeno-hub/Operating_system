# Operating Systems Lab

A collection of Operating Systems laboratory assignments completed using **Ubuntu 24.04 LTS on WSL2**.

This repository contains Linux command-line exercises, shell scripts, process management experiments, filesystem operations, CPU scheduling simulations, memory management exercises, and system monitoring outputs.

## Environment

| Component | Details |
|---|---|
| OS | Ubuntu 24.04 LTS |
| Environment | Windows Subsystem for Linux (WSL2) |
| Shell | Bash |
| Architecture | x86_64 |
| Language | Bash / Linux Shell Commands |

## Repository Structure

```text
operating-systems-lab/
│
├── commands/
│   ├── fs_lab/
│   ├── ipl_stats.txt
│   ├── rcb_players.txt
│   ├── team_count.txt
│   └── top_scorers.txt
│
├── outputs/
│   ├── address_translate_output.txt
│   ├── dd_large.txt
│   ├── dd_small.txt
│   ├── fcfs_output.txt
│   ├── perm_check_output.txt
│   ├── permission_denied.txt
│   ├── q1_error.log
│   ├── q1_output.txt
│   ├── q2_io_output.txt
│   ├── q2_proc_info.txt
│   ├── q2_process_output.txt
│   ├── q3_fs_output.txt
│   ├── q3_permissions.txt
│   └── system_info.txt
│
└── scripts/
    ├── address_translate.sh
    ├── fcfs_scheduler.sh
    └── perm_check.sh
```

## Lab Exercises

### Q1 — Linux Commands, Streams & Redirection

Explored Linux command-line utilities using an IPL player dataset.

Topics covered:
- User and system information commands.
- Input/output redirection.
- Standard error redirection.
- Pipes and command chaining.
- `grep`, `cut`, `sort`, `uniq`, and `wc`.
- Filtering and sorting CSV data.
- Appending records to files.

### Q2 — Process Management & System Information

Explored Linux processes and the `/proc` virtual filesystem.

Topics covered:
- Process listing using `ps aux`.
- Process counting.
- Background processes using `&`.
- Retrieving process IDs using `$!`.
- Process state inspection.
- Process termination using `kill`.
- Exploring `/proc/version`, `/proc/cpuinfo`, and `/proc/<PID>/status`.
- Disk I/O experiments using `dd`.
- Block and character device enumeration.

**Environment note:** Certain `/proc` namespace operations may have restricted permissions under WSL2.

### Q3 — Filesystems, Inodes & Permissions

Explored Linux filesystem organization and file metadata.

Topics covered:
- Directory creation and navigation.
- Hard links and inode verification.
- File metadata inspection using `stat`.
- Filesystem inode availability using `df -i`.
- Linux file permissions.
- Permission modification using `chmod`.
- Shell-based permission checking.
- Sector and storage calculations.

Implemented:
- `perm_check.sh`

### Q4 — CPU Scheduling, Memory Management & Monitoring

Explored fundamental operating system concepts through calculations, shell scripts, and system utilities.

**CPU Scheduling**
- First Come First Serve (FCFS).
- Arrival time and burst time.
- Completion time.
- Turnaround time.
- Waiting time.
- Average waiting and turnaround time.

**Memory Management**
- Logical address decomposition.
- Page number and offset calculations.
- Page-to-frame mapping.
- Physical address calculation.
- Invalid page detection and page faults.

**System Monitoring**
- Memory usage using `free`.
- Disk utilization using `df`.
- System uptime using `uptime`.
- Process counting.
- Hardware interrupt inspection using `/proc/interrupts`.
- System log monitoring using `tail`.

Implemented:
- `fcfs_scheduler.sh`
- `address_translate.sh`

## Technologies & Utilities

- Ubuntu Linux
- Bash Shell Scripting
- Linux Process Management
- Linux Filesystem
- `/proc` Virtual Filesystem
- Linux Permissions
- CPU Scheduling
- Memory Management
- Standard Linux Command-Line Utilities

## Learning Outcomes

Through these exercises, I practised:

- Working with Linux command-line utilities.
- Understanding process lifecycle and management.
- Exploring filesystem structures and inode mechanisms.
- Implementing basic shell scripts.
- Understanding CPU scheduling algorithms.
- Performing logical-to-physical address translation.
- Inspecting system resources and monitoring system activity.

## Disclaimer

This repository contains academic coursework and practice implementations created for learning and reference purposes.

System-dependent outputs may vary across Linux distributions, hardware configurations, and execution environments.
