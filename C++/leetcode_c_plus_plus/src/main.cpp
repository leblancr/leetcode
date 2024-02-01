// Main.cpp
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <memory>

#include "../include/leetcode.h"

using namespace std;

int main(int argc, char* argv[]) {
    unique_ptr<Leetcode> leetcode(new Leetcode()); // Instantiate object using unique_ptr, variable name is leetcode

    cout << "1480. Running Sum of 1D Array" << endl;
    leetcode->running_sum_of_1d_array_1480();  // use -> for smart pointer

    cout << "1672. Richest Customer Wealth" << endl;
    leetcode->richest_customer_wealth_1672();

    cout << "412. Fizz Buzz" << endl;
    leetcode->fizz_buzz_412();


    cout << endl;


    // 1342. Number of Steps to Reduce a Number to Zero

    return 0;
}
