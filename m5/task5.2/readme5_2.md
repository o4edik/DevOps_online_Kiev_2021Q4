### Module 5. Linux Essentials.
#### Taks 5.2

**1) Analyze the structure of the /etc/passwd and /etc/group file, what fields are
present in it, what users exist on the system? Specify several pseudo-users, how
to define them?**

- /etc/passwd contains user names and their UID (user identifier),  /etc/group contains groups and their GID(grroup identifier)

**2) What are the uid ranges? What is UID? How to define it?**

- UID it's a number is used to identify the user to the system and to determine which system resources the user can access. First 100 UID's reserved for system use,  In Ubuntu UID of new users starts from  1000. The third column of current screenshot is UID

**3) What is GID? How to define it?**
- GID it's group in Linux, , the first 100 GIDs are usually reserved for system use. The GID of 0 corresponds to the root group and the GID of 100 usually represents the users group. In ubuntu new groups usually starts with 1000 as well as UID's.

**4) How to determine belonging of user to the specific group?**
 - Using command groups <username> we can get the list of groups user belongings

 **5) What are the commands for adding a user to the system? What are the basic
parameters required to create a user?**
 - The most useful command for creating user is  "useradd". Basic parameters like this "useradd -m  username", here we will create new user with his home directory. Command "useradd -D" will create a user with default values.

**6) How do I change the name (account name) of an existing user?**
  - We are using command "usermod -l newusername oldusername" for changing name of existing user.

**7) What is skell_dir? What is its structure?**

   - Directory /etc/skel/ is used to initiate home directory when a user is first created. 

**8) How to remove a user from the system (including his mailbox)?**

 - For deleting userfrom system we using the <userdel> with <-r>. For Ubuntu we using <deluser> and <--remove-home> to delete home dir and mailbox

**9) What commands and keys should be used to lock and unlock a user account?**
  - We use <passwd> or <usermod> with <-l> for lock and <-u> for unlock file

![]()  

**10) How to remove a user's password and provide him with a password-free
login for subsequent password change?**

 - For removing user's password we use <passwd -d -e>, Delete a user's password and immediately expires an account's password and forces a user to change their password at the user's next login.

 **11) Display the extended format of information about the directory, tell about
the information columns displayed on the terminal**
 - For getting information about directory we use <ls -la -h>

![11]()

    - The file type = directory
    - The file permissions = rwxr-xr-x
    - Number of hard links to the file = 2
    - File owner = ed
    - File group = ed
    - File size = 4Kb
    - Date and Time of last changes = 08/11/2021
    - File name = Desktop

![11-1]()

**12) What access rights exist and for whom (i. e., describe the main roles)?
Briefly describe the acronym for access rights**

 - There are 3 main access rights in Linux: owner,group, all/others. 
  - Owner: The user who creates the file or folder is the owner of that file or folder, and the owner can permit the other types of users to access that file and folder.
  - Group: The users who belongs to the particular group  can get access  to the files according permissions that this group
  - All/others : any user who is not the owner of a particular file or folder and does not belong to the file or folder owner’s group can get access to the file according file permissions
  
 - UAR  means User Access Rights

**13) What is the sequence of defining the relationship between the file and the user?**

 - With command <ls -la> we can see how file related to user

 **14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal**

  - For change onwer of file we use <chown>

  ![14-1]()

  ![14-2]()

  - For change mode of access to thr file we use <chmod>

  ![14-2]() 

  ![14-3]()


**15) What is an example of octal representation of access rights? Describe the umask command**

 - Octal representation of access rights is when we using figures instead of keys(-r, -w,-x), where r=4, w=2, x=1, no permision =0. Example below shows 752 means that  for user 7 =rwx, for group 5=r-x, for all 2=w

 ![14-3]()

**16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes**

 - A Sticky bit is a permission bit that is set on a file or a directory that lets only the owner of the file/directory or the root user to delete or rename the file. No other user is given privileges to delete the file created by some other user

![16-1]()

**17) What file attributes should be present in the command script?**

 - Command script file should has attributes like this -rwxr-xr-x, extension .sh,and stsrts with string #!/bin/bash

![17-1]() 




