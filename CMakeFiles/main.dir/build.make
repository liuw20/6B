# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liuw20/桌面/代码提交/homework6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liuw20/桌面/代码提交/homework6

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/6B.c.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/6B.c.o: 6B.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liuw20/桌面/代码提交/homework6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/main.dir/6B.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/6B.c.o   -c /home/liuw20/桌面/代码提交/homework6/6B.c

CMakeFiles/main.dir/6B.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/6B.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/liuw20/桌面/代码提交/homework6/6B.c > CMakeFiles/main.dir/6B.c.i

CMakeFiles/main.dir/6B.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/6B.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/liuw20/桌面/代码提交/homework6/6B.c -o CMakeFiles/main.dir/6B.c.s

CMakeFiles/main.dir/6B.c.o.requires:

.PHONY : CMakeFiles/main.dir/6B.c.o.requires

CMakeFiles/main.dir/6B.c.o.provides: CMakeFiles/main.dir/6B.c.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/6B.c.o.provides.build
.PHONY : CMakeFiles/main.dir/6B.c.o.provides

CMakeFiles/main.dir/6B.c.o.provides.build: CMakeFiles/main.dir/6B.c.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/6B.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/6B.c.o
main: CMakeFiles/main.dir/build.make
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liuw20/桌面/代码提交/homework6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/6B.c.o.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/liuw20/桌面/代码提交/homework6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liuw20/桌面/代码提交/homework6 /home/liuw20/桌面/代码提交/homework6 /home/liuw20/桌面/代码提交/homework6 /home/liuw20/桌面/代码提交/homework6 /home/liuw20/桌面/代码提交/homework6/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

