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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuxuan/Project/RoyaleFlex2_CPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuxuan/Project/RoyaleFlex2_CPP/build

# Include any dependencies generated for this target.
include CMakeFiles/sampleRetrieveData.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sampleRetrieveData.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sampleRetrieveData.dir/flags.make

CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o: CMakeFiles/sampleRetrieveData.dir/flags.make
CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o: ../sampleRetrieveData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuxuan/Project/RoyaleFlex2_CPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o -c /home/yuxuan/Project/RoyaleFlex2_CPP/sampleRetrieveData.cpp

CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yuxuan/Project/RoyaleFlex2_CPP/sampleRetrieveData.cpp > CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.i

CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yuxuan/Project/RoyaleFlex2_CPP/sampleRetrieveData.cpp -o CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.s

# Object files for target sampleRetrieveData
sampleRetrieveData_OBJECTS = \
"CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o"

# External object files for target sampleRetrieveData
sampleRetrieveData_EXTERNAL_OBJECTS =

sampleRetrieveData: CMakeFiles/sampleRetrieveData.dir/sampleRetrieveData.cpp.o
sampleRetrieveData: CMakeFiles/sampleRetrieveData.dir/build.make
sampleRetrieveData: /home/yuxuan/Downloads/libroyale/bin/libroyale.so.5.4.0
sampleRetrieveData: CMakeFiles/sampleRetrieveData.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuxuan/Project/RoyaleFlex2_CPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sampleRetrieveData"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sampleRetrieveData.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sampleRetrieveData.dir/build: sampleRetrieveData

.PHONY : CMakeFiles/sampleRetrieveData.dir/build

CMakeFiles/sampleRetrieveData.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sampleRetrieveData.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sampleRetrieveData.dir/clean

CMakeFiles/sampleRetrieveData.dir/depend:
	cd /home/yuxuan/Project/RoyaleFlex2_CPP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuxuan/Project/RoyaleFlex2_CPP /home/yuxuan/Project/RoyaleFlex2_CPP /home/yuxuan/Project/RoyaleFlex2_CPP/build /home/yuxuan/Project/RoyaleFlex2_CPP/build /home/yuxuan/Project/RoyaleFlex2_CPP/build/CMakeFiles/sampleRetrieveData.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sampleRetrieveData.dir/depend

