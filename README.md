## 1. List the user commands and redirect the output to /tmp/commands.list
to list the user commands use command:
```
history
```
to redirect it to /tmp/commands.list:
```
history >/tmp/commands.list
```
![Screenshot from 2023-12-14 15-47-53](https://github.com/salma199m/Embedded_Linux/assets/93713490/628073a1-2194-4327-82b1-2f9d30c703d3)
## 2. Edit in your profile to display date at login and change your prompt permanently
to display date at login open ~/.baschrc and write date word with command:
```
vim ~/.bashrc
```
![Screenshot from 2023-12-08 02-51-17](https://github.com/salma199m/Embedded_Linux/assets/93713490/b60c539c-8e2c-4204-bd1d-0f42a1772a11)
## 3. What is the command to count the word in a file or number of file in directory
to count the word in a file :
```
wc -w file_name 
```
![Screenshot from 2023-12-08 02-57-53](https://github.com/salma199m/Embedded_Linux/assets/93713490/01559a99-82a0-4742-96d5-7da955b3641c)
to count the number of files in directoy:
```
ls -1|wc -l
```
![Screenshot from 2023-12-14 16-26-06](https://github.com/salma199m/Embedded_Linux/assets/93713490/192bf896-9cae-407d-8417-47fcb7f283ff)
to count the number of user commands:
```
history|wc -l
```
![Screenshot from 2023-12-08 03-05-05](https://github.com/salma199m/Embedded_Linux/assets/93713490/d76b3daf-9d2a-4a8a-8fd8-162471c7521a)
## 4. What happens if you execute:
### a. cat filename1 | cat filename2
### b. ls | rm
### c. ls /etc/passwd | wc –l

a. the contents of filename2 will appear

![Screenshot from 2023-12-14 16-38-33](https://github.com/salma199m/Embedded_Linux/assets/93713490/59628115-dc9b-46b4-86fa-a49944bdeaf1)

b. missing operand

![Screenshot from 2023-12-14 16-42-16](https://github.com/salma199m/Embedded_Linux/assets/93713490/cc8e0926-2b30-4079-b13c-0b333dcc7eec)

c. 

![Screenshot from 2023-12-14 16-46-23](https://github.com/salma199m/Embedded_Linux/assets/93713490/258a0578-d8e8-49d2-9e6a-ac6abc3e70a1)

## 5. Write a command to search for all files on the system that, its name is “.profile”
use this command:
```
find /path -type f -iname filename
find / -type f -iname ".profile*"
```
![Screenshot from 2023-12-14 17-38-59-1](https://github.com/salma199m/Embedded_Linux/assets/93713490/81845aa1-0862-431f-a403-d38ef7f2ec78)

to suppress permission-denied errors use:
```
find /path -type f -iname filename 2>/dev/null
find / -type f -iname ".profile*" 2>/dev/null
```
![Screenshot from 2023-12-14 17-39-25](https://github.com/salma199m/Embedded_Linux/assets/93713490/6eb57f3d-e7cd-4c63-ae86-5962fbfbe970)


## 6. List the inode numbers of /, /etc, /etc/hosts
use this command:
```
ls - i
```
![Screenshot from 2023-12-14 17-52-00](https://github.com/salma199m/Embedded_Linux/assets/93713490/ee03b06c-ee33-4a8d-8f4c-7036e732c918)

![Screenshot from 2023-12-14 17-52-24](https://github.com/salma199m/Embedded_Linux/assets/93713490/7f6b1746-ea1e-489c-8e1a-cd2e40251c3f)

## 7. Create a symbolic link of /etc/passwd in /boot
use this command:
```
sudo ln -s /target-directory/target-file> </symlink-directory/example-symlink
sudo ln -s /etc/passwd /boot/passwd_link
```
![Screenshot from 2023-12-14 18-09-04](https://github.com/salma199m/Embedded_Linux/assets/93713490/fdf1611f-aa1c-4c2a-9085-cf432e0bb60c)

synmol link >>>> different inode

![Screenshot from 2023-12-14 18-11-30](https://github.com/salma199m/Embedded_Linux/assets/93713490/e477b709-febd-4de3-b266-409bdf5d4bf9)

## 8. Create a hard link of /etc/passwd in /boot
```
sudo ln /target-directory/target-file> </symlink-directory/example-symlink
sudo ln /etc/passwd /boot/hardpasswd_link
```
Hard link >>>> same inode

![Screenshot from 2023-12-14 18-17-10](https://github.com/salma199m/Embedded_Linux/assets/93713490/5b701755-b2b4-493a-a99a-95c51ff04ee5)










