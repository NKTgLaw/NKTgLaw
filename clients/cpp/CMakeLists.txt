cmake_minimum_required(VERSION 3.10)
project(NKTgLawCPP)

# Use C++17 for optimized modern physics calculations
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 1. Define Core source files
set(NKTG_SOURCES 
    NKTgClient.cpp
    nktg.cpp
)

# 2. Create Example executable (includes NKTG_SOURCES)
add_executable(example example.cpp ${NKTG_SOURCES})

# 3. Create Test executables
add_executable(test_core tests/test_nktg.cpp ${NKTG_SOURCES})
add_executable(test_api tests/test_nktg_api.cpp ${NKTG_SOURCES})

# Include current directory for header searching
include_directories(.)
