# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/cmake/888/bin/cmake

# The command to remove a file.
RM = /snap/cmake/888/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/patryk/Pulpit/zad5_2-Patidzon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/patryk/Pulpit/zad5_2-Patidzon/build

# Include any dependencies generated for this target.
include CMakeFiles/program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/program.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/program.dir/flags.make

CMakeFiles/program.dir/src/example.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/src/example.cpp.o: ../src/example.cpp
CMakeFiles/program.dir/src/example.cpp.o: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/patryk/Pulpit/zad5_2-Patidzon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/program.dir/src/example.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/program.dir/src/example.cpp.o -MF CMakeFiles/program.dir/src/example.cpp.o.d -o CMakeFiles/program.dir/src/example.cpp.o -c /home/patryk/Pulpit/zad5_2-Patidzon/src/example.cpp

CMakeFiles/program.dir/src/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/src/example.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/patryk/Pulpit/zad5_2-Patidzon/src/example.cpp > CMakeFiles/program.dir/src/example.cpp.i

CMakeFiles/program.dir/src/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/src/example.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/patryk/Pulpit/zad5_2-Patidzon/src/example.cpp -o CMakeFiles/program.dir/src/example.cpp.s

CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o: ../src/lacze_do_gnuplota.cpp
CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/patryk/Pulpit/zad5_2-Patidzon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o -MF CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o.d -o CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o -c /home/patryk/Pulpit/zad5_2-Patidzon/src/lacze_do_gnuplota.cpp

CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/patryk/Pulpit/zad5_2-Patidzon/src/lacze_do_gnuplota.cpp > CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.i

CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/patryk/Pulpit/zad5_2-Patidzon/src/lacze_do_gnuplota.cpp -o CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.s

program: CMakeFiles/program.dir/src/example.cpp.o
program: CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o
program: CMakeFiles/program.dir/build.make
.PHONY : program

# Rule to build all files generated by this target.
CMakeFiles/program.dir/build: program
.PHONY : CMakeFiles/program.dir/build

CMakeFiles/program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/program.dir/clean

CMakeFiles/program.dir/depend:
	cd /home/patryk/Pulpit/zad5_2-Patidzon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/patryk/Pulpit/zad5_2-Patidzon /home/patryk/Pulpit/zad5_2-Patidzon /home/patryk/Pulpit/zad5_2-Patidzon/build /home/patryk/Pulpit/zad5_2-Patidzon/build /home/patryk/Pulpit/zad5_2-Patidzon/build/CMakeFiles/program.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/program.dir/depend

