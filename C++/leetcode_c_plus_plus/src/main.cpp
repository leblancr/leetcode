// Main.cpp
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <memory>

#include "../include/leetcode.h"

using namespace std;

int main(int argc, char* argv[]) {
    cout << "Running leetcode problems"<< endl;
    unique_ptr<Leetcode> leetcode(new Leetcode()); // Instantiate object using unique_ptr, variable name is leetcode

    leetcode->running_sum_of_1d_array_1480();  // use -> for smart pointer
    leetcode->richest_customer_wealth_1672();
    leetcode->fizz_buzz_412();
    leetcode->number_of_steps_to_reduce_a_number_to_zero_1342();

    cout << endl;


    // 1342. Number of Steps to Reduce a Number to Zero

    return 0;
}
