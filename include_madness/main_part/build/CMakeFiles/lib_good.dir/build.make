# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/igor/Code/SmallTestProjects/include_madness/main_part

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/igor/Code/SmallTestProjects/include_madness/main_part/build

# Include any dependencies generated for this target.
include CMakeFiles/lib_good.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lib_good.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lib_good.dir/flags.make

CMakeFiles/lib_good.dir/lib_good.cpp.o: CMakeFiles/lib_good.dir/flags.make
CMakeFiles/lib_good.dir/lib_good.cpp.o: ../lib_good.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/igor/Code/SmallTestProjects/include_madness/main_part/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lib_good.dir/lib_good.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lib_good.dir/lib_good.cpp.o -c /home/igor/Code/SmallTestProjects/include_madness/main_part/lib_good.cpp

CMakeFiles/lib_good.dir/lib_good.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib_good.dir/lib_good.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/igor/Code/SmallTestProjects/include_madness/main_part/lib_good.cpp > CMakeFiles/lib_good.dir/lib_good.cpp.i

CMakeFiles/lib_good.dir/lib_good.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib_good.dir/lib_good.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/igor/Code/SmallTestProjects/include_madness/main_part/lib_good.cpp -o CMakeFiles/lib_good.dir/lib_good.cpp.s

CMakeFiles/lib_good.dir/lib_good.cpp.o.requires:
.PHONY : CMakeFiles/lib_good.dir/lib_good.cpp.o.requires

CMakeFiles/lib_good.dir/lib_good.cpp.o.provides: CMakeFiles/lib_good.dir/lib_good.cpp.o.requires
	$(MAKE) -f CMakeFiles/lib_good.dir/build.make CMakeFiles/lib_good.dir/lib_good.cpp.o.provides.build
.PHONY : CMakeFiles/lib_good.dir/lib_good.cpp.o.provides

CMakeFiles/lib_good.dir/lib_good.cpp.o.provides.build: CMakeFiles/lib_good.dir/lib_good.cpp.o

# Object files for target lib_good
lib_good_OBJECTS = \
"CMakeFiles/lib_good.dir/lib_good.cpp.o"

# External object files for target lib_good
lib_good_EXTERNAL_OBJECTS =

liblib_good.so: CMakeFiles/lib_good.dir/lib_good.cpp.o
liblib_good.so: CMakeFiles/lib_good.dir/build.make
liblib_good.so: CMakeFiles/lib_good.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library liblib_good.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib_good.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lib_good.dir/build: liblib_good.so
.PHONY : CMakeFiles/lib_good.dir/build

CMakeFiles/lib_good.dir/requires: CMakeFiles/lib_good.dir/lib_good.cpp.o.requires
.PHONY : CMakeFiles/lib_good.dir/requires

CMakeFiles/lib_good.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lib_good.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lib_good.dir/clean

CMakeFiles/lib_good.dir/depend:
	cd /home/igor/Code/SmallTestProjects/include_madness/main_part/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/igor/Code/SmallTestProjects/include_madness/main_part /home/igor/Code/SmallTestProjects/include_madness/main_part /home/igor/Code/SmallTestProjects/include_madness/main_part/build /home/igor/Code/SmallTestProjects/include_madness/main_part/build /home/igor/Code/SmallTestProjects/include_madness/main_part/build/CMakeFiles/lib_good.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lib_good.dir/depend

