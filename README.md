
![Screenshot from 2024-01-05 05-16-53](https://github.com/salma199m/Embedded_Linux/assets/93713490/779a8880-53da-47c0-89a5-af5ae545a75b)

## In the top-level CMakeLists.txt file:

```
cmake_minimum_required(VERSION x.x)
```
   this command: Specifies the minimum version of CMake required to build the project.

   
   to know the cmake version: 
   ```
   cmake --version
   ```

```
project(ProjectName)
```
  this command: Sets the name of the project. ProjectName.
    
```
add_subdirectory(directory)
```
  this command: Adds a subdirectory to the build, This is used when you have separate directories for different parts of your project.

  
```
  add_executable(executable_name source_file1 source_file2 ...)
```
  this command: Defines an executable target in CMake. Lists the source files that are compiled and linked to create the executable.

  and we will use it once for static_lib and another for shared_lib.
  

```
  target_link_libraries(target_name library1 library2 ...)
```
  this command: Specifies the libraries to link with the target. Associates libraries with an executable or another library target.

  we will use the libraries from library/CMakeLists.txt to link it with static and shared executable files.


  ## In the library/CMakeLists.txt file:

```
file(GLOB variable_name "pattern")
file(GLOB SOURCE_FILES "*.c")

```
  this command: Creates a list of files based on a wildcard pattern. Often used to automatically find source files in a directory.

  
```
add_library(library_name type source_file1 source_file2 ...)
```
 this command: Defines a library target in CMake. type can be STATIC, SHARED. Lists the source files that are compiled to create the library.

  
```
target_include_directories(target_name PUBLIC include_directory)
```

  this command: Specifies include directories for a target. Used to include header files during compilation.

    
