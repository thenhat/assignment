# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /private/var/folders/w0/bw629_r1569_1bflnhpkdbx40000gp/T/AppTranslocation/E266E87F-20AB-4F52-8C27-52B702EE028A/d/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /private/var/folders/w0/bw629_r1569_1bflnhpkdbx40000gp/T/AppTranslocation/E266E87F-20AB-4F52-8C27-52B702EE028A/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Data/Nhat/assignment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Data/Nhat/assignment/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/assignment.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment.dir/flags.make

CMakeFiles/assignment.dir/main.c.o: CMakeFiles/assignment.dir/flags.make
CMakeFiles/assignment.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Data/Nhat/assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/assignment.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/assignment.dir/main.c.o   -c /Volumes/Data/Nhat/assignment/main.c

CMakeFiles/assignment.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/assignment.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Data/Nhat/assignment/main.c > CMakeFiles/assignment.dir/main.c.i

CMakeFiles/assignment.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/assignment.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Data/Nhat/assignment/main.c -o CMakeFiles/assignment.dir/main.c.s

# Object files for target assignment
assignment_OBJECTS = \
"CMakeFiles/assignment.dir/main.c.o"

# External object files for target assignment
assignment_EXTERNAL_OBJECTS =

assignment: CMakeFiles/assignment.dir/main.c.o
assignment: CMakeFiles/assignment.dir/build.make
assignment: CMakeFiles/assignment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Data/Nhat/assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable assignment"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assignment.dir/build: assignment

.PHONY : CMakeFiles/assignment.dir/build

CMakeFiles/assignment.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/assignment.dir/cmake_clean.cmake
.PHONY : CMakeFiles/assignment.dir/clean

CMakeFiles/assignment.dir/depend:
	cd /Volumes/Data/Nhat/assignment/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Data/Nhat/assignment /Volumes/Data/Nhat/assignment /Volumes/Data/Nhat/assignment/cmake-build-debug /Volumes/Data/Nhat/assignment/cmake-build-debug /Volumes/Data/Nhat/assignment/cmake-build-debug/CMakeFiles/assignment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/assignment.dir/depend

