# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = "/Users/cooper/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/201.6668.126/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/cooper/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/201.6668.126/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/cooper/Dropbox/Code/ Mastermind Solver V4"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/_Mastermind_Solver_V4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/_Mastermind_Solver_V4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/_Mastermind_Solver_V4.dir/flags.make

CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o: CMakeFiles/_Mastermind_Solver_V4.dir/flags.make
CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o -c "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/main.cpp"

CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/main.cpp" > CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.i

CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/main.cpp" -o CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.s

# Object files for target _Mastermind_Solver_V4
_Mastermind_Solver_V4_OBJECTS = \
"CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o"

# External object files for target _Mastermind_Solver_V4
_Mastermind_Solver_V4_EXTERNAL_OBJECTS =

_Mastermind_Solver_V4: CMakeFiles/_Mastermind_Solver_V4.dir/main.cpp.o
_Mastermind_Solver_V4: CMakeFiles/_Mastermind_Solver_V4.dir/build.make
_Mastermind_Solver_V4: CMakeFiles/_Mastermind_Solver_V4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable _Mastermind_Solver_V4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_Mastermind_Solver_V4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/_Mastermind_Solver_V4.dir/build: _Mastermind_Solver_V4

.PHONY : CMakeFiles/_Mastermind_Solver_V4.dir/build

CMakeFiles/_Mastermind_Solver_V4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_Mastermind_Solver_V4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_Mastermind_Solver_V4.dir/clean

CMakeFiles/_Mastermind_Solver_V4.dir/depend:
	cd "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cooper/Dropbox/Code/ Mastermind Solver V4" "/Users/cooper/Dropbox/Code/ Mastermind Solver V4" "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug" "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug" "/Users/cooper/Dropbox/Code/ Mastermind Solver V4/cmake-build-debug/CMakeFiles/_Mastermind_Solver_V4.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/_Mastermind_Solver_V4.dir/depend
