cmake_minimum_required(VERSION 3.5)

project(Ex04 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(ex04_recordCollection main.cpp artist.h track.h track.cpp album.h album.cpp recordCollection.h)
