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
CMAKE_SOURCE_DIR = /home/lzj/Friday/Examples/Echo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lzj/Friday/Examples/Echo/build

# Include any dependencies generated for this target.
include CMakeFiles/echo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/echo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echo.dir/flags.make

CMakeFiles/echo.dir/EchoServer.cpp.o: CMakeFiles/echo.dir/flags.make
CMakeFiles/echo.dir/EchoServer.cpp.o: ../EchoServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzj/Friday/Examples/Echo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/echo.dir/EchoServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echo.dir/EchoServer.cpp.o -c /home/lzj/Friday/Examples/Echo/EchoServer.cpp

CMakeFiles/echo.dir/EchoServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echo.dir/EchoServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lzj/Friday/Examples/Echo/EchoServer.cpp > CMakeFiles/echo.dir/EchoServer.cpp.i

CMakeFiles/echo.dir/EchoServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echo.dir/EchoServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lzj/Friday/Examples/Echo/EchoServer.cpp -o CMakeFiles/echo.dir/EchoServer.cpp.s

CMakeFiles/echo.dir/EchoServer.cpp.o.requires:

.PHONY : CMakeFiles/echo.dir/EchoServer.cpp.o.requires

CMakeFiles/echo.dir/EchoServer.cpp.o.provides: CMakeFiles/echo.dir/EchoServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/echo.dir/build.make CMakeFiles/echo.dir/EchoServer.cpp.o.provides.build
.PHONY : CMakeFiles/echo.dir/EchoServer.cpp.o.provides

CMakeFiles/echo.dir/EchoServer.cpp.o.provides.build: CMakeFiles/echo.dir/EchoServer.cpp.o


# Object files for target echo
echo_OBJECTS = \
"CMakeFiles/echo.dir/EchoServer.cpp.o"

# External object files for target echo
echo_EXTERNAL_OBJECTS =

echo: CMakeFiles/echo.dir/EchoServer.cpp.o
echo: CMakeFiles/echo.dir/build.make
echo: src/libFridayNET.a
echo: CMakeFiles/echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lzj/Friday/Examples/Echo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable echo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echo.dir/build: echo

.PHONY : CMakeFiles/echo.dir/build

CMakeFiles/echo.dir/requires: CMakeFiles/echo.dir/EchoServer.cpp.o.requires

.PHONY : CMakeFiles/echo.dir/requires

CMakeFiles/echo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echo.dir/clean

CMakeFiles/echo.dir/depend:
	cd /home/lzj/Friday/Examples/Echo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lzj/Friday/Examples/Echo /home/lzj/Friday/Examples/Echo /home/lzj/Friday/Examples/Echo/build /home/lzj/Friday/Examples/Echo/build /home/lzj/Friday/Examples/Echo/build/CMakeFiles/echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echo.dir/depend
