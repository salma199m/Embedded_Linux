### 1-creat files.c(add.c, sub.c, multi.c, division.c, modlus.c) 
and the same files but files.h
```
vim file.c
vim file.h
```
use this command to compile source files and generate object files
```
gcc -c *.c
```
### 2- create static library by using this command:
```
ar -rcs liboperation.a *.o
```
#### to compile static library "liboperation.a":
```
gcc -static main.c -loperation -L. -o static_calc
```
##### Run static_calc
![Screenshot from 2023-12-21 19-43-58](https://github.com/salma199m/Embedded_Linux/assets/93713490/030f2495-7663-4540-840f-83231c78da08)

### ldd command
![Screenshot from 2023-12-21 20-48-38](https://github.com/salma199m/Embedded_Linux/assets/93713490/ba60fee3-e85e-4cbb-b574-ae76aba68cdd)
##### Won't work with static ldd because static executables do not have dynamic dependencies

### file command
![Screenshot from 2023-12-21 20-49-42](https://github.com/salma199m/Embedded_Linux/assets/93713490/a5a05813-bdc4-44cd-86af-25df6b7ec704)





## 2-Dynamic library
#### -first recompile src files by uding this command:
```
gcc -c -fPIC *.c
```
### create dynamic library by using this command:
```
gcc -shared -o liboperation.so *.o
```
#### -to compile dynamic library "liboperation.so":
##### before compilation we should Make sure the directory containing "liboperation.so" is in the library search path:
```
export LD_LIBRARY_PATH=/path/to/directory
```
#### compile by using:
```
gcc main.o -loperation -L. -o dynamic_calc
```
##### Run dynamic_calc
![Screenshot from 2023-12-21 20-29-46](https://github.com/salma199m/Embedded_Linux/assets/93713490/f8505a74-2e37-4d7a-b1bb-5a7f925d836c)

### ldd command

![Screenshot from 2023-12-21 20-36-39](https://github.com/salma199m/Embedded_Linux/assets/93713490/963584a8-663d-40f5-827b-4076d6981cbe
##### The ldd command is used to print the shared library dependencies of an executable or a shared library. 
##### It shows which dynamic libraries a program is linked against and where they are located.

### file command
![Screenshot from 2023-12-21 20-40-36](https://github.com/salma199m/Embedded_Linux/assets/93713490/2943cf16-70c1-4846-a4f8-776657b4cf35)

### objdump -x command
![Screenshot from 2023-12-21 20-46-39](https://github.com/salma199m/Embedded_Linux/assets/93713490/f96dc638-375f-43eb-9b09-0ca6a65cfad0)


##### Provides detailed information about the dynamic executable lika symbol table


