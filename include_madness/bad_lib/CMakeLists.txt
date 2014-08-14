cmake_minimum_required(VERSION 2.8)

project(bad_lib)

set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${bad_lib_SOURCE_DIR}/lib )

add_library(include_bad SHARED
  include_bad.cpp
  include_bad.h)
