cmake_minimum_required(VERSION 2.8)

project(include_madness)

set(BAD_LIB_DIR ${include_madness_SOURCE_DIR}/../bad_lib)
set(BAD_LIB_LIBRARY_DIR ${BAD_LIB_DIR}/lib)

add_library(lib_good SHARED
    lib_good.cpp lib_good.h)

link_directories(${BAD_LIB_LIBRARY_DIR})

add_executable(exec main.cpp)
target_link_libraries(exec include_bad lib_good)
