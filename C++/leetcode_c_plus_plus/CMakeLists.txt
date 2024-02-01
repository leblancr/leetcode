cmake_minimum_required(VERSION 3.15)

project(leetcode_c_plus_plus)

add_executable(leetcode_c_plus_plus
src/main.cpp
src/running_sum_of_1d_array_1480.cpp
src/richest_customer_wealth_1672.cpp
src/fizz_buzz_412.cpp
src/leetcode.cpp
)

install(TARGETS leetcode_c_plus_plus RUNTIME DESTINATION bin)
