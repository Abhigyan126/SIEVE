cmake_minimum_required(VERSION 3.10)
project(sieve C)

# Set C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Create the library
add_library(sieve_lib
    src/sieve.c
)

# Add include directories
target_include_directories(sieve_lib PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Create the test executable
add_executable(sieve_test
    tests/test.c
)

# Link the test executable with the library
target_link_libraries(sieve_test
    sieve_lib
)