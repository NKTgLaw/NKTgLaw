cmake_minimum_required(VERSION 3.10)
project(nktg_backend)

# Define the executable target
add_executable(nktg.exe
    server/server_offline/server.cpp
    core/nktg.cpp
    core/units.cpp
    core/utils.cpp
)

# Include directories for header files
target_include_directories(nktg.exe PRIVATE
    core
    server/server_offline
)
