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
include test/CMakeFiles/evaluators.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/evaluators.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/evaluators.dir/flags.make

test/CMakeFiles/evaluators.dir/evaluators.cpp.o: test/CMakeFiles/evaluators.dir/flags.make
test/CMakeFiles/evaluators.dir/evaluators.cpp.o: ../test/evaluators.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/evaluators.dir/evaluators.cpp.o"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/evaluators.dir/evaluators.cpp.o -c /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/evaluators.cpp

test/CMakeFiles/evaluators.dir/evaluators.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evaluators.dir/evaluators.cpp.i"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/evaluators.cpp > CMakeFiles/evaluators.dir/evaluators.cpp.i

test/CMakeFiles/evaluators.dir/evaluators.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evaluators.dir/evaluators.cpp.s"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test/evaluators.cpp -o CMakeFiles/evaluators.dir/evaluators.cpp.s

test/CMakeFiles/evaluators.dir/evaluators.cpp.o.requires:

.PHONY : test/CMakeFiles/evaluators.dir/evaluators.cpp.o.requires

test/CMakeFiles/evaluators.dir/evaluators.cpp.o.provides: test/CMakeFiles/evaluators.dir/evaluators.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/evaluators.dir/build.make test/CMakeFiles/evaluators.dir/evaluators.cpp.o.provides.build
.PHONY : test/CMakeFiles/evaluators.dir/evaluators.cpp.o.provides

test/CMakeFiles/evaluators.dir/evaluators.cpp.o.provides.build: test/CMakeFiles/evaluators.dir/evaluators.cpp.o


# Object files for target evaluators
evaluators_OBJECTS = \
"CMakeFiles/evaluators.dir/evaluators.cpp.o"

# External object files for target evaluators
evaluators_EXTERNAL_OBJECTS =

test/evaluators: test/CMakeFiles/evaluators.dir/evaluators.cpp.o
test/evaluators: test/CMakeFiles/evaluators.dir/build.make
test/evaluators: test/CMakeFiles/evaluators.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable evaluators"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/evaluators.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/evaluators.dir/build: test/evaluators

.PHONY : test/CMakeFiles/evaluators.dir/build

test/CMakeFiles/evaluators.dir/requires: test/CMakeFiles/evaluators.dir/evaluators.cpp.o.requires

.PHONY : test/CMakeFiles/evaluators.dir/requires

test/CMakeFiles/evaluators.dir/clean:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test && $(CMAKE_COMMAND) -P CMakeFiles/evaluators.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/evaluators.dir/clean

test/CMakeFiles/evaluators.dir/depend:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0 /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/test /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/test/CMakeFiles/evaluators.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/evaluators.dir/depend
