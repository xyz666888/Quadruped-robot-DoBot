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
CMAKE_SOURCE_DIR = /home/human/dobot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/human/dobot/build

# Include any dependencies generated for this target.
include dobot/CMakeFiles/avoid.dir/depend.make

# Include the progress variables for this target.
include dobot/CMakeFiles/avoid.dir/progress.make

# Include the compile flags for this target's objects.
include dobot/CMakeFiles/avoid.dir/flags.make

dobot/CMakeFiles/avoid.dir/src/avoid.cpp.o: dobot/CMakeFiles/avoid.dir/flags.make
dobot/CMakeFiles/avoid.dir/src/avoid.cpp.o: /home/human/dobot/src/dobot/src/avoid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/human/dobot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dobot/CMakeFiles/avoid.dir/src/avoid.cpp.o"
	cd /home/human/dobot/build/dobot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/avoid.dir/src/avoid.cpp.o -c /home/human/dobot/src/dobot/src/avoid.cpp

dobot/CMakeFiles/avoid.dir/src/avoid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avoid.dir/src/avoid.cpp.i"
	cd /home/human/dobot/build/dobot && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/human/dobot/src/dobot/src/avoid.cpp > CMakeFiles/avoid.dir/src/avoid.cpp.i

dobot/CMakeFiles/avoid.dir/src/avoid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avoid.dir/src/avoid.cpp.s"
	cd /home/human/dobot/build/dobot && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/human/dobot/src/dobot/src/avoid.cpp -o CMakeFiles/avoid.dir/src/avoid.cpp.s

# Object files for target avoid
avoid_OBJECTS = \
"CMakeFiles/avoid.dir/src/avoid.cpp.o"

# External object files for target avoid
avoid_EXTERNAL_OBJECTS =

/home/human/dobot/devel/lib/dobot/avoid: dobot/CMakeFiles/avoid.dir/src/avoid.cpp.o
/home/human/dobot/devel/lib/dobot/avoid: dobot/CMakeFiles/avoid.dir/build.make
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libserial.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_gapi.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_highgui.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_ml.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_objdetect.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_photo.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_stitching.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_video.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_videoio.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libcv_bridge.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_calib3d.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_dnn.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_features2d.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_flann.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_gapi.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_highgui.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_ml.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_objdetect.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_photo.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_stitching.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_video.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_videoio.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_core.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_imgproc.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_imgcodecs.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libimage_transport.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libmessage_filters.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libclass_loader.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libdl.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libroscpp.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/librosconsole.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libroslib.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/librospack.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/librostime.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /opt/ros/noetic/lib/libcpp_common.so
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_imgcodecs.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_dnn.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_calib3d.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_features2d.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_flann.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_imgproc.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: /usr/local/lib/libopencv_core.so.4.9.0
/home/human/dobot/devel/lib/dobot/avoid: dobot/CMakeFiles/avoid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/human/dobot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/human/dobot/devel/lib/dobot/avoid"
	cd /home/human/dobot/build/dobot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avoid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dobot/CMakeFiles/avoid.dir/build: /home/human/dobot/devel/lib/dobot/avoid

.PHONY : dobot/CMakeFiles/avoid.dir/build

dobot/CMakeFiles/avoid.dir/clean:
	cd /home/human/dobot/build/dobot && $(CMAKE_COMMAND) -P CMakeFiles/avoid.dir/cmake_clean.cmake
.PHONY : dobot/CMakeFiles/avoid.dir/clean

dobot/CMakeFiles/avoid.dir/depend:
	cd /home/human/dobot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/human/dobot/src /home/human/dobot/src/dobot /home/human/dobot/build /home/human/dobot/build/dobot /home/human/dobot/build/dobot/CMakeFiles/avoid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dobot/CMakeFiles/avoid.dir/depend

