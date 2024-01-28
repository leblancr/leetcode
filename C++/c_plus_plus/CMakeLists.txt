cmake_minimum_required(VERSION 3.0)

project(c_plus_plus LANGUAGES CXX)

add_executable(c_plus_plus main.cpp)

install(TARGETS c_plus_plus RUNTIME DESTINATION bin)
target_link_libraries(c_plus_plus PRIVATE c++)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
