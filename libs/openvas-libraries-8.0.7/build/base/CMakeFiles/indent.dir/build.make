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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build

# Utility rule file for indent.

# Include the progress variables for this target.
include base/CMakeFiles/indent.dir/progress.make

base/CMakeFiles/indent:
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build/base && indent --no-tabs --ignore-newlines -l 80 array.c credentials.c openvas_hosts.c cvss.c drop_privileges.c nvti.c nvticache.c openvas_compress.c openvas_file.c openvas_networking.c openvas_string.c pidfile.c settings.c gpgme_util.c pwpolicy.c osp.c

indent: base/CMakeFiles/indent
indent: base/CMakeFiles/indent.dir/build.make
.PHONY : indent

# Rule to build all files generated by this target.
base/CMakeFiles/indent.dir/build: indent
.PHONY : base/CMakeFiles/indent.dir/build

base/CMakeFiles/indent.dir/clean:
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build/base && $(CMAKE_COMMAND) -P CMakeFiles/indent.dir/cmake_clean.cmake
.PHONY : base/CMakeFiles/indent.dir/clean

base/CMakeFiles/indent.dir/depend:
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7 /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/base /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build/base /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/build/base/CMakeFiles/indent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/CMakeFiles/indent.dir/depend

