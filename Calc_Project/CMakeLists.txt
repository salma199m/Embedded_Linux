cmake_minimum_required(VERSION 3.22.1)

project(Calc_Project)

# Add subdirectory for the calculator
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/library)

# Create static executable
add_executable(static_lib app.c)

# Link the static library with the static executable
target_link_libraries(static_lib PRIVATE operation_static)

# Create shared executable
add_executable(shared_lib app.c)

# Link the shared library with the dynamic executable
target_link_libraries(shared_lib PRIVATE operation_shared)




