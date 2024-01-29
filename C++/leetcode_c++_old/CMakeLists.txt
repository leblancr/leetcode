cmake_minimum_required(VERSION 3.0)

project(leetcode_c++ LANGUAGES CXX)

add_executable(leetcode_c++ main.cpp)

install(TARGETS leetcode_c++ RUNTIME DESTINATION bin)
target_link_libraries(leetcode_c++ PRIVATE c++)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
