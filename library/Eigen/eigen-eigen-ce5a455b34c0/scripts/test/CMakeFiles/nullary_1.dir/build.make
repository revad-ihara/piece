# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts

# Include any dependencies generated for this target.
include test/CMakeFiles/nullary_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/nullary_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/nullary_1.dir/flags.make

test/CMakeFiles/nullary_1.dir/nullary.cpp.o: test/CMakeFiles/nullary_1.dir/flags.make
test/CMakeFiles/nullary_1.dir/nullary.cpp.o: ../test/nullary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/nullary_1.dir/nullary.cpp.o"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nullary_1.dir/nullary.cpp.o -c /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/nullary.cpp

test/CMakeFiles/nullary_1.dir/nullary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nullary_1.dir/nullary.cpp.i"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/nullary.cpp > CMakeFiles/nullary_1.dir/nullary.cpp.i

test/CMakeFiles/nullary_1.dir/nullary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nullary_1.dir/nullary.cpp.s"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/nullary.cpp -o CMakeFiles/nullary_1.dir/nullary.cpp.s

test/CMakeFiles/nullary_1.dir/nullary.cpp.o.requires:

.PHONY : test/CMakeFiles/nullary_1.dir/nullary.cpp.o.requires

test/CMakeFiles/nullary_1.dir/nullary.cpp.o.provides: test/CMakeFiles/nullary_1.dir/nullary.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/nullary_1.dir/build.make test/CMakeFiles/nullary_1.dir/nullary.cpp.o.provides.build
.PHONY : test/CMakeFiles/nullary_1.dir/nullary.cpp.o.provides

test/CMakeFiles/nullary_1.dir/nullary.cpp.o.provides.build: test/CMakeFiles/nullary_1.dir/nullary.cpp.o


# Object files for target nullary_1
nullary_1_OBJECTS = \
"CMakeFiles/nullary_1.dir/nullary.cpp.o"

# External object files for target nullary_1
nullary_1_EXTERNAL_OBJECTS =

test/nullary_1: test/CMakeFiles/nullary_1.dir/nullary.cpp.o
test/nullary_1: test/CMakeFiles/nullary_1.dir/build.make
test/nullary_1: test/CMakeFiles/nullary_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nullary_1"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nullary_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/nullary_1.dir/build: test/nullary_1

.PHONY : test/CMakeFiles/nullary_1.dir/build

test/CMakeFiles/nullary_1.dir/requires: test/CMakeFiles/nullary_1.dir/nullary.cpp.o.requires

.PHONY : test/CMakeFiles/nullary_1.dir/requires

test/CMakeFiles/nullary_1.dir/clean:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && $(CMAKE_COMMAND) -P CMakeFiles/nullary_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/nullary_1.dir/clean

test/CMakeFiles/nullary_1.dir/depend:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0 /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test/CMakeFiles/nullary_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/nullary_1.dir/depend
