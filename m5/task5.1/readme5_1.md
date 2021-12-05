### Module 5. Linux Essentials.
#### Taks 5.1
##### Part 1

**1. Determine the users registered in the system**
 - Using commands "finger" I've got user information
 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.1/info%20about%20me.png)

 **2. Change personal information about yourself**
  - using command "chfn" I've got to change the personal info about me
  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.1/4change%20info.png)

  **3. Get help on the "man" and "info" commands, define and describe any two
keys for these commands**
 - "man" command, key -K  search for text in all pages
 - "man" command, key -w  print physical location of man page(s)
 - "info" command, key - -a  use all matching manuals
 - "info" command, key - -k  look up STRING in all indices of all manuals



 **4. List the contents of the home directory using the ls command, define its files
and directories**
 - 
 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.1/8ls.png)


 #### Part 2

 **1. Examine the tree command.Display all files that contain a character c, or files that contain a
specific sequence of characters**
 - showed up all files contains sequence of chars "cess"

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m5/task5.1/2-1tree%20grep%20cess.png)

**2. What command can be used to determine the type of file**
  - 
![]()

**3. How can you go back to your home directory from anywhere in the filesystem?**
 - Using "cd ~" I can get to the home directory from anywhere
 ![]()

**4. Give examples of listing directories using different keys. Explain the information displayed on the terminal using the -l and -a switches**

- command ls -a, outputs list of all files include hidden
![]()

- command ls - , outputs list of files with detailed information about them
![]()

- command ls -la -h, outputs list of files including hidden with detailed information and shows info in human friendly format
![]()

**5. Perform the following sequence of operations:**
- create a subdirectory in the home directory
![]()

- in this subdirectory create a file containing 
information about directories located in the root directory (using I/O redirection operations)
```
ed@deik:~$ ls > ~/test/dir.txt
```

- view the created file;
![]()

- copy the created file to your home directory using relative and absolute addressing
```
ed@deik:~$ cp /home/ed/test/dir.txt /home/ed/dir.txt
```



- delete the previously created subdirectory with the file requesting removal

```
ed@deik:~$ rm -r test
```

- delete the file copied to the home directory
```
ed@deik:~$ rm dir.txt
```

**6. Perform the following sequence of operations**
- create a subdirectory test in the home directory
![]()





