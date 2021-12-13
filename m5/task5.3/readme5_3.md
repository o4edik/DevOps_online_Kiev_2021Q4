### Module 5. Linux Essentials.
#### Taks 5.3
##### Part 1

1. How many states could has a process in Linux?

 - It could be have next  states:
              - D    uninterruptible sleep (usually IO)
              - I    Idle kernel thread
              - R    running or runnable (on run queue)
              - S    interruptible sleep (waiting for an event to complete)
              - T    stopped by job control signal
              - t    stopped by debugger during the tracing
              - W    paging (not valid since the 2.6.xx kernel)
              - X    dead (should never be seen)
              - Z    defunct ("zombie") process, terminated but not reaped by its parent


2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current
process.

 - For highlighting current process we use "pstree -h"

 ![2](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/2.png)

3. What is a proc file system?

 - It's a virtual file system created on fly when system boots and is dissolved at time of system shut down.
It contains useful information about the processes that are currently running, it is regarded as control and information center for kernel. The proc file system also provides communication medium between kernel space and user space.

4. Print information about the processor (its type, supported technologies, etc.).

 - For getting info about processor we'll use "lscpu" as shown below

 ![4](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/4.png)

5. Use the ps command to get information about the process. The information should be as
follows: the owner of the process, the arguments with which the process was launched for
execution, the group owner of this process, etc.

![5](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/5.png)


6. How to define kernel processes and user processes?

 - We can define them via UID as shown delow UID = 1000 that means it belongs to user, as we know kernelprocesses has an UID range 1 -100 

 ![5](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/5.png)

7. Print the list of processes to the terminal. Briefly describe the statuses of the processes.
What condition are they in, or can they be arriving in?

 - For output list of processes to the terminal, we'll use "top" command, here what we have as we take for example first row of screenshot below

  - PID=104817, PR(priority)=20, NI(nice)=0, VIRT=3443088 amount of virtual memory used by process, RES=699572 amount of resident memory used by the process, SHR=115836 amount of shared memory used by the process, S=R(running) status of the process, %CPU=102.0 the share of CPU time used by the process since the last update, %MEM=8.8 the share of physical memory used, TIME+ =34:34.24 total CPU time used by the task in hundredths of a second, COMMAND=Web Content command name or command line 

8. Display only the processes of a specific user.
 - for show processes of a specific user name "ed" we will take "top -u ed"

 ![8](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/8.png)

9. What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?

 - For analyze running tasks we can use: ps, top(htop)

10. What information does top command display?

 - The "top" command displays us the next information: PID, PR(priority)=, NI(nice), VIRT amount of virtual memory used by process, RES amount of resident memory used by the process, SHR amount of shared memory used by the process, S status of the process, %CPU the share of CPU time used by the process since the last update, %MEM the share of physical memory used, TIME+  total CPU time used by the task in hundredths of a second, COMMAND Content command name or command line 

11. Display the processes of the specific user using the top command.

 ![11](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/11.png)

12. What interactive commands can be used to control the top command? Give a couple of
examples.

- Some interactive commands that helps our life with "top":
    - "f" , Fields management  

![13-1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/13-1.jpg)

    - "z", Switches the current window between your last used color scheme and the older form of black-on-white or white-on-black.

![13-2](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/13-2.jpg)

   - "c", This command will be honored whether or not the COMMAND column is currently visible. Later, should that field come into view, the change you applied will be seen.


13. Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

  - Using "f" Field Management we will sort output of "top" command by %CPU and PID

![14-1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/14-1.jpg)

![14-2](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/14-2.jpg) 

14. Concept of priority, what commands are used to set priority?

  - For setting priority we are using "nice" and "renice" commands

15. Can I change the priority of a process using the top command? If so, how?

  - We can change the priority of a process using "top" command and press "r" enter to the mode where we'll be prompted for PID and nice value. Positive nice value decreasing priority and vice versa negative value is decreasing priority


16. Examine the kill command. How to send with the kill command
process control signal? Give an example of commonly used signals.

  - Signals can be sent in three ways: By number (e.g. -9); With SIG prefix (e.g. -SIGkill); Without SIG prefix (e.g. -kill)
  - Most commonly  used signals are: SIGKILL(9); SIGINT(2) killing foreground process; SIGSTOP(19) Stop process; SIGTERM(15) Termination signal; 

17. Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to
demonstrate the process control mechanism with fg, bg.

  - jobs it's a process working on a background, using "jobs" command we can see how the process doing

![18-1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/18-1.jpg)

  - Command "fg" restores stopped process in foreground, "bg" restores stopped processes in background
  
  - Command "nohup" is a command that ignores the HUP signal. HUP signal it's basically a signal that is delivered to a process when its associated shell is terminated
  - Command "sleep" allows us to delay something for a period of time i.e. "sleep 5; fg" will restore stopped process to foreground with 5sec delay

![18-1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.3/18-1.jpg)

##### Part 2

1. Implement basic SSH settings to increase the security of the client-server connection (at least

 - Use SSH Protocol Version 2; Avoid Port 22; Reject Connection Requests With No Passwords; Use SSH Keys Instead of Passwords; Disable Password Authentication Altogether; Disable X11 Forwarding; Set an Idle Timeout Value
