# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abhigyan/Downloads/project/sieve

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abhigyan/Downloads/project/sieve/build

# Include any dependencies generated for this target.
include CMakeFiles/sieve_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sieve_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sieve_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sieve_test.dir/flags.make

CMakeFiles/sieve_test.dir/codegen:
.PHONY : CMakeFiles/sieve_test.dir/codegen

CMakeFiles/sieve_test.dir/tests/test.c.o: CMakeFiles/sieve_test.dir/flags.make
CMakeFiles/sieve_test.dir/tests/test.c.o: /Users/abhigyan/Downloads/project/sieve/tests/test.c
CMakeFiles/sieve_test.dir/tests/test.c.o: CMakeFiles/sieve_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/abhigyan/Downloads/project/sieve/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/sieve_test.dir/tests/test.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/sieve_test.dir/tests/test.c.o -MF CMakeFiles/sieve_test.dir/tests/test.c.o.d -o CMakeFiles/sieve_test.dir/tests/test.c.o -c /Users/abhigyan/Downloads/project/sieve/tests/test.c

CMakeFiles/sieve_test.dir/tests/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sieve_test.dir/tests/test.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/abhigyan/Downloads/project/sieve/tests/test.c > CMakeFiles/sieve_test.dir/tests/test.c.i

CMakeFiles/sieve_test.dir/tests/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sieve_test.dir/tests/test.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/abhigyan/Downloads/project/sieve/tests/test.c -o CMakeFiles/sieve_test.dir/tests/test.c.s

# Object files for target sieve_test
sieve_test_OBJECTS = \
"CMakeFiles/sieve_test.dir/tests/test.c.o"

# External object files for target sieve_test
sieve_test_EXTERNAL_OBJECTS =

sieve_test: CMakeFiles/sieve_test.dir/tests/test.c.o
sieve_test: CMakeFiles/sieve_test.dir/build.make
sieve_test: libsieve_lib.a
sieve_test: CMakeFiles/sieve_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/abhigyan/Downloads/project/sieve/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable sieve_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sieve_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sieve_test.dir/build: sieve_test
.PHONY : CMakeFiles/sieve_test.dir/build

CMakeFiles/sieve_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sieve_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sieve_test.dir/clean

CMakeFiles/sieve_test.dir/depend:
	cd /Users/abhigyan/Downloads/project/sieve/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abhigyan/Downloads/project/sieve /Users/abhigyan/Downloads/project/sieve /Users/abhigyan/Downloads/project/sieve/build /Users/abhigyan/Downloads/project/sieve/build /Users/abhigyan/Downloads/project/sieve/build/CMakeFiles/sieve_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/sieve_test.dir/depend

