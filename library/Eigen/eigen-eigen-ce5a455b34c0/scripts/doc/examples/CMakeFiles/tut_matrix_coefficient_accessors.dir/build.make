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
include doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/flags.make

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/flags.make
doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o: ../doc/examples/tut_matrix_coefficient_accessors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o -c /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/doc/examples/tut_matrix_coefficient_accessors.cpp

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.i"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/doc/examples/tut_matrix_coefficient_accessors.cpp > CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.i

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.s"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/doc/examples/tut_matrix_coefficient_accessors.cpp -o CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.s

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.requires:

.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.requires

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.provides: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.requires
	$(MAKE) -f doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/build.make doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.provides.build
.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.provides

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.provides.build: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o


# Object files for target tut_matrix_coefficient_accessors
tut_matrix_coefficient_accessors_OBJECTS = \
"CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o"

# External object files for target tut_matrix_coefficient_accessors
tut_matrix_coefficient_accessors_EXTERNAL_OBJECTS =

doc/examples/tut_matrix_coefficient_accessors: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o
doc/examples/tut_matrix_coefficient_accessors: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/build.make
doc/examples/tut_matrix_coefficient_accessors: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tut_matrix_coefficient_accessors"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tut_matrix_coefficient_accessors.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && ./tut_matrix_coefficient_accessors >/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples/tut_matrix_coefficient_accessors.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/build: doc/examples/tut_matrix_coefficient_accessors

.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/build

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/requires: doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/tut_matrix_coefficient_accessors.cpp.o.requires

.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/requires

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/clean:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/tut_matrix_coefficient_accessors.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/clean

doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/depend:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0 /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/doc/examples /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/tut_matrix_coefficient_accessors.dir/depend

