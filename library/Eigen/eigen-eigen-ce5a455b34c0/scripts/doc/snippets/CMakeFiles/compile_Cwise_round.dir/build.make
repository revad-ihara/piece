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
include doc/snippets/CMakeFiles/compile_Cwise_round.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_Cwise_round.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_Cwise_round.dir/flags.make

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o: doc/snippets/CMakeFiles/compile_Cwise_round.dir/flags.make
doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o: doc/snippets/compile_Cwise_round.cpp
doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o: ../doc/snippets/Cwise_round.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o -c /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets/compile_Cwise_round.cpp

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.i"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets/compile_Cwise_round.cpp > CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.i

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.s"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets/compile_Cwise_round.cpp -o CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.s

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.requires:

.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.requires

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.provides: doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.requires
	$(MAKE) -f doc/snippets/CMakeFiles/compile_Cwise_round.dir/build.make doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.provides.build
.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.provides

doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.provides.build: doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o


# Object files for target compile_Cwise_round
compile_Cwise_round_OBJECTS = \
"CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o"

# External object files for target compile_Cwise_round
compile_Cwise_round_EXTERNAL_OBJECTS =

doc/snippets/compile_Cwise_round: doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o
doc/snippets/compile_Cwise_round: doc/snippets/CMakeFiles/compile_Cwise_round.dir/build.make
doc/snippets/compile_Cwise_round: doc/snippets/CMakeFiles/compile_Cwise_round.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_Cwise_round"
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_Cwise_round.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && ./compile_Cwise_round >/Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets/Cwise_round.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_Cwise_round.dir/build: doc/snippets/compile_Cwise_round

.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/build

doc/snippets/CMakeFiles/compile_Cwise_round.dir/requires: doc/snippets/CMakeFiles/compile_Cwise_round.dir/compile_Cwise_round.cpp.o.requires

.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/requires

doc/snippets/CMakeFiles/compile_Cwise_round.dir/clean:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_Cwise_round.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/clean

doc/snippets/CMakeFiles/compile_Cwise_round.dir/depend:
	cd /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0 /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/doc/snippets /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets /Users/akinori-i/Documents/Research/consensus/NLP/library/Eigen/eigen-eigen-ce5a455b34c0/scripts/doc/snippets/CMakeFiles/compile_Cwise_round.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_Cwise_round.dir/depend

