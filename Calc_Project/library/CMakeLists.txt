file(GLOB src_files ${CMAKE_CURRENT_SOURCE_DIR}/../src/*.c)

# Create static library
add_library(operation_static STATIC ${src_files})

# Create shared library
add_library(operation_shared SHARED ${src_files})

# Include directories
target_include_directories(operation_static PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)
target_include_directories(operation_shared PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)


