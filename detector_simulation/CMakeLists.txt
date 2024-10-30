cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(LOCalSim)

find_package(Geant4 REQUIRED ui_all vis_all)

include(${Geant4_USE_FILE})
include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cc)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)

add_executable(local local.cc ${sources} ${headers})
target_link_libraries(local ${Geant4_LIBRARIES})

add_custom_target(LOCalSim DEPENDS local)