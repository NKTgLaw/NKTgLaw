cmake_minimum_required(VERSION 3.10)
project(NKTgLawCPP)

set(CMAKE_CXX_STANDARD 11)

add_executable(example example.cpp)
add_executable(test tests/test_nktg.cpp)
