import leetcode

print("Running leetcode problems")

import argparse
import leetcode
import os


def main():
    parser = argparse.ArgumentParser(
        description="Run a selected LeetCode problem function"
    )
    parser.add_argument(
        "problem",  # variable to hold arg
        help="Name of the LeetCode function to run (e.g., fizz_buzz_412)"
    )
    args = parser.parse_args()
    #print(args.problem)  # the number of the leetcode problem

    # Find script ending with that number
    with os.scandir('.') as entries:
        for entry in entries:
            if entry.is_file() and os.path.splitext(entry)[0].endswith('679'):
                print(entry.name)
                print(os.path.splitext(entry)[0])
                print(os.path.splitext(entry.name)[0])
                getattr(leetcode, os.path.splitext(entry.name)[0])()
                break
        else:
            print(f"No file name found ending with {args.problem}.")
# easy
# leetcode.find_the_highest_altitude_1732()
# leetcode.fizz_buzz_412()
# leetcode.merge_strings_alternately_1768()
# leetcode.reduce_a_number_to_zero_1342()

# Hash Map / Set
# easy
# leetcode.find_the_difference_of_two_arrays_2215()

# Array/String
# easy
# leetcode.reverse_vowels_of_a_string_345()
# leetcode.richest_customer_wealth_1672()
# leetcode.running_sum_of_1d_array_1480()
# medium
# leetcode.increasing_triplet_subsequence_334()
# leetcode.product_of_array_except_self_238()
# leetcode.reverse_words_in_a_string_151()

# Two Pointers
# medium
# leetcode.container_with_most_water_11()
# leetcode.max_number_of_k_sum_pairs_679()


if __name__ == "__main__":
    main()