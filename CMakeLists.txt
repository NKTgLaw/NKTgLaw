cmake_minimum_required(VERSION 3.10)
project(nktg_backend)

add_executable(nktg.exe
    server/server.cpp
    core/nktg.cpp
    core/units.cpp
    core/utils.cpp
)

target_include_directories(nktg.exe PRIVATE core server)

