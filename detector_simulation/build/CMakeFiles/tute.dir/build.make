# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Users/franciscomartinez/anaconda3/envs/my_geant/bin/cmake

# The command to remove a file.
RM = /Users/franciscomartinez/anaconda3/envs/my_geant/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/franciscomartinez/g4_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/franciscomartinez/g4_tutorial/build

# Include any dependencies generated for this target.
include CMakeFiles/tute.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tute.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tute.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tute.dir/flags.make

CMakeFiles/tute.dir/tute.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/tute.cc.o: /Users/franciscomartinez/g4_tutorial/tute.cc
CMakeFiles/tute.dir/tute.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tute.dir/tute.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/tute.cc.o -MF CMakeFiles/tute.dir/tute.cc.o.d -o CMakeFiles/tute.dir/tute.cc.o -c /Users/franciscomartinez/g4_tutorial/tute.cc

CMakeFiles/tute.dir/tute.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/tute.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/tute.cc > CMakeFiles/tute.dir/tute.cc.i

CMakeFiles/tute.dir/tute.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/tute.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/tute.cc -o CMakeFiles/tute.dir/tute.cc.s

CMakeFiles/tute.dir/src/ActionInitialization.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/ActionInitialization.cc.o: /Users/franciscomartinez/g4_tutorial/src/ActionInitialization.cc
CMakeFiles/tute.dir/src/ActionInitialization.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tute.dir/src/ActionInitialization.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/ActionInitialization.cc.o -MF CMakeFiles/tute.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/tute.dir/src/ActionInitialization.cc.o -c /Users/franciscomartinez/g4_tutorial/src/ActionInitialization.cc

CMakeFiles/tute.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/ActionInitialization.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/ActionInitialization.cc > CMakeFiles/tute.dir/src/ActionInitialization.cc.i

CMakeFiles/tute.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/ActionInitialization.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/ActionInitialization.cc -o CMakeFiles/tute.dir/src/ActionInitialization.cc.s

CMakeFiles/tute.dir/src/DetectorConstruction.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/DetectorConstruction.cc.o: /Users/franciscomartinez/g4_tutorial/src/DetectorConstruction.cc
CMakeFiles/tute.dir/src/DetectorConstruction.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tute.dir/src/DetectorConstruction.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/tute.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/tute.dir/src/DetectorConstruction.cc.o -c /Users/franciscomartinez/g4_tutorial/src/DetectorConstruction.cc

CMakeFiles/tute.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/DetectorConstruction.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/DetectorConstruction.cc > CMakeFiles/tute.dir/src/DetectorConstruction.cc.i

CMakeFiles/tute.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/DetectorConstruction.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/DetectorConstruction.cc -o CMakeFiles/tute.dir/src/DetectorConstruction.cc.s

CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o: /Users/franciscomartinez/g4_tutorial/src/DetectorConstructionAlt.cc
CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o -MF CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o.d -o CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o -c /Users/franciscomartinez/g4_tutorial/src/DetectorConstructionAlt.cc

CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/DetectorConstructionAlt.cc > CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.i

CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/DetectorConstructionAlt.cc -o CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.s

CMakeFiles/tute.dir/src/PhysicsList.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/PhysicsList.cc.o: /Users/franciscomartinez/g4_tutorial/src/PhysicsList.cc
CMakeFiles/tute.dir/src/PhysicsList.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tute.dir/src/PhysicsList.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/PhysicsList.cc.o -MF CMakeFiles/tute.dir/src/PhysicsList.cc.o.d -o CMakeFiles/tute.dir/src/PhysicsList.cc.o -c /Users/franciscomartinez/g4_tutorial/src/PhysicsList.cc

CMakeFiles/tute.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/PhysicsList.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/PhysicsList.cc > CMakeFiles/tute.dir/src/PhysicsList.cc.i

CMakeFiles/tute.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/PhysicsList.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/PhysicsList.cc -o CMakeFiles/tute.dir/src/PhysicsList.cc.s

CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o: /Users/franciscomartinez/g4_tutorial/src/PrimaryGeneratorAction.cc
CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o -c /Users/franciscomartinez/g4_tutorial/src/PrimaryGeneratorAction.cc

CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/PrimaryGeneratorAction.cc > CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/PrimaryGeneratorAction.cc -o CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/tute.dir/src/SensitiveDetector.cc.o: CMakeFiles/tute.dir/flags.make
CMakeFiles/tute.dir/src/SensitiveDetector.cc.o: /Users/franciscomartinez/g4_tutorial/src/SensitiveDetector.cc
CMakeFiles/tute.dir/src/SensitiveDetector.cc.o: CMakeFiles/tute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tute.dir/src/SensitiveDetector.cc.o"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tute.dir/src/SensitiveDetector.cc.o -MF CMakeFiles/tute.dir/src/SensitiveDetector.cc.o.d -o CMakeFiles/tute.dir/src/SensitiveDetector.cc.o -c /Users/franciscomartinez/g4_tutorial/src/SensitiveDetector.cc

CMakeFiles/tute.dir/src/SensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tute.dir/src/SensitiveDetector.cc.i"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/franciscomartinez/g4_tutorial/src/SensitiveDetector.cc > CMakeFiles/tute.dir/src/SensitiveDetector.cc.i

CMakeFiles/tute.dir/src/SensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tute.dir/src/SensitiveDetector.cc.s"
	/Users/franciscomartinez/anaconda3/envs/my_geant/bin/x86_64-apple-darwin13.4.0-clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/franciscomartinez/g4_tutorial/src/SensitiveDetector.cc -o CMakeFiles/tute.dir/src/SensitiveDetector.cc.s

# Object files for target tute
tute_OBJECTS = \
"CMakeFiles/tute.dir/tute.cc.o" \
"CMakeFiles/tute.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/tute.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o" \
"CMakeFiles/tute.dir/src/PhysicsList.cc.o" \
"CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/tute.dir/src/SensitiveDetector.cc.o"

# External object files for target tute
tute_EXTERNAL_OBJECTS =

tute: CMakeFiles/tute.dir/tute.cc.o
tute: CMakeFiles/tute.dir/src/ActionInitialization.cc.o
tute: CMakeFiles/tute.dir/src/DetectorConstruction.cc.o
tute: CMakeFiles/tute.dir/src/DetectorConstructionAlt.cc.o
tute: CMakeFiles/tute.dir/src/PhysicsList.cc.o
tute: CMakeFiles/tute.dir/src/PrimaryGeneratorAction.cc.o
tute: CMakeFiles/tute.dir/src/SensitiveDetector.cc.o
tute: CMakeFiles/tute.dir/build.make
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4Tree.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4FR.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4GMocren.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4visHepRep.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4RayTracer.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4VRML.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4ToolsSG.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4OpenGL.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4visQt3D.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4vis_management.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4modeling.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4interfaces.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4persistency.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4error_propagation.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4readout.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4physicslists.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4run.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4event.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4tracking.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4parmodels.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4processes.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4digits_hits.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4track.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4particles.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4geometry.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4materials.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4graphics_reps.dylib
tute: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenGL.framework
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5OpenGL.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5PrintSupport.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5Widgets.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt53DExtras.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt53DInput.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5Gamepad.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt53DLogic.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt53DRender.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt53DCore.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5Gui.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5Network.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libQt5Core.5.15.8.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libxerces-c.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4analysis.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libfreetype.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libz.dylib
tute: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libexpat.tbd
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4intercoms.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4global.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libG4ptl.2.3.3.dylib
tute: /Users/franciscomartinez/anaconda3/envs/my_geant/lib/libCLHEP-2.4.6.2.dylib
tute: CMakeFiles/tute.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/franciscomartinez/g4_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable tute"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tute.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tute.dir/build: tute
.PHONY : CMakeFiles/tute.dir/build

CMakeFiles/tute.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tute.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tute.dir/clean

CMakeFiles/tute.dir/depend:
	cd /Users/franciscomartinez/g4_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/franciscomartinez/g4_tutorial /Users/franciscomartinez/g4_tutorial /Users/franciscomartinez/g4_tutorial/build /Users/franciscomartinez/g4_tutorial/build /Users/franciscomartinez/g4_tutorial/build/CMakeFiles/tute.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tute.dir/depend
