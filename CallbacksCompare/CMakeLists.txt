project(test_callbacks)

if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
  message(FATAL_ERROR "In-source builds not allowed. Please make a new directory (called a build directory) and run CMake from there. You may need to remove CMakeCache.txt. ")
endif()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

add_library(callback11
  c11callback.cpp c11callback.h)

add_library(callback_java_style
  java_style_callback.cpp java_style_callback.h
  event_handler_impl.cpp event_handler_impl.h
  event_handler_abstract.h)

add_executable(main main.cpp)
target_link_libraries(main callback11)
target_link_libraries(main callback_java_style)
