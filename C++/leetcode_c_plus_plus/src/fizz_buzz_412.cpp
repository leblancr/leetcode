// fizz_buzz_412.cpp
//#include <algorithm>
//#include <numeric>

#include "/home/rich/projects/leetcode/C++/leetcode_c_plus_plus/include/fizz_buzz_412.h"

#include <iostream>
#include <vector>
#include <string>

std::vector<std::string> calculate_fizz_buzz(int limit) {
    std::vector<std::string> result;
    for (int n = 1; n < limit; ++n) {
        if (n % 3 == 0 && n % 5 == 0) {
            result.push_back("FizzBuzz");
        } else if (n % 3 == 0) {
            result.push_back("Fizz");
        } else if (n % 5 == 0) {
            result.push_back("Buzz");
        } else {
            result.push_back(std::to_string(n));
        }
    }
    return result;
}
