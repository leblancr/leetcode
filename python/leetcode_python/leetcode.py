from running_sum_of_1D_array_1480 import RunningSumOf1DArray1480
from richest_customer_wealth_1672 import RichestCustomerWealth
from fizz_buzz_412 import FizzBuzz
from reduce_a_number_to_zero_1342 import NumSteps
from merge_strings_alternately_1768 import MergeStrings
from reverse_vowels_of_a_string_345 import ReverseVowels
from find_the_highest_altitude_1732 import HighestAltitude
from reverse_words_in_a_string_151 import ReverseWords
from product_of_array_except_self_238 import ProductArray
from increasing_triplet_subsequence_334 import IncreasingTripletSubsequence
from container_with_most_water_11 import ContainerWithMostWater
from max_number_of_k_sum_pairs_679 import MaxPairs
from find_the_difference_of_two_arrays_2215 import DifferenceOfArrays


def container_with_most_water_11():
    print("11. Container With Most Water")
    number_lists = [[1, 8, 6, 2, 5, 4, 8, 3, 7], [1, 1]]

    for number_list in number_lists:
        print(f"input: {number_list}")
        mw = ContainerWithMostWater(number_list)  # make object
        print(f"output: {mw.container_with_most_water()}\n")


def find_the_difference_of_two_arrays_2215():
    print("2215. find_the_difference_of_two_arrays")
    input_data = [[[1, 2, 3], [2, 4, 6]],
                  [[1, 2, 3, 3], [1, 1, 2, 2]]]

    # for each list find the highest altitude
    for input_list in input_data:
        print(f"input_list: {input_list}")
        doa = DifferenceOfArrays(input_list)
        print(f"output: {doa.find_the_difference_of_two_arrays()}\n")


def find_the_highest_altitude_1732():
    print("1732. Find the Highest Altitude")
    gains = [[-5, 1, 5, 0, -7], [-4, -3, -2, -1, 4, 3, 2]]

    # for each list find the highest altitude
    for gain in gains:
        print(f"gain: {gain}")
        ha = HighestAltitude(gain)
        print(f"highest altitude: {ha.find_the_highest_altitude()}\n")


def fizz_buzz_412():
    print("412. Fizz Buzz")
    limit = 16  # check up to limit
    fb = FizzBuzz(limit)
    fb.calculate_fizz_buzz()


def increasing_triplet_subsequence_334():
    print("334. Increasing Triplet Subsequence")
    number_lists = [[1, 2, 3, 4, 5], [5, 4, 3, 2, 1], [2, 1, 5, 0, 4, 6]]

    for number_list in number_lists:
        its = IncreasingTripletSubsequence(number_list)
        print(f"output: {its.increasing_triplet_subsequence()}\n")


def max_number_of_k_sum_pairs_679():
    print("1679. max_number_of_k_sum_pairs")
    input_data = [{5: [1, 2, 3, 4]},
            {6: [3, 1, 3, 4, 3]}]

    print(f"data: {input_data}")
    mp = MaxPairs(input_data)
    print(f"output: {mp.max_number_of_k_sum_pairs()}\n")


def merge_strings_alternately_1768():
    print("1768. Merge Strings Alternately")
    words = ["abc", "pqr"]
    print("words: ", words)
    ms = MergeStrings(words)
    print(f"merged string: {ms.merge_strings()}\n")

    words = ["ab", "pqrs"]
    print("words: ", words)
    ms = MergeStrings(words)
    print(f"merged string: {ms.merge_strings()}\n")

    words = ["abcd", "pq"]
    print("words: ", words)
    ms = MergeStrings(words)
    print(f"merged string: {ms.merge_strings()}\n")


def product_of_array_except_self_238():
    print("238. Product of Array Except Self")
    number_lists = [[1, 2, 3, 4], [-1, 1, 0, -3, 3]]

    for number_list in number_lists:
        pa = ProductArray(number_list)
        print(f"output: {pa.product_of_array_except_self()}\n")


def reduce_a_number_to_zero_1342():
    print("1342. Number of Steps to Reduce a Number to Zero")
    number = 16
    ns = NumSteps(number)
    print(f"Number of steps to reduce {number} to zero: {ns.number_of_steps()}\n")


def reverse_vowels_of_a_string_345():
    print("345. Reverse Vowels of a String")
    input_strings = ['hello', 'leetcode', 'xylophone']

    for string in input_strings:
        print(f"input string: {string}")
        rv = ReverseVowels(string)
        print(f"result string: {rv.reverse_vowels()}\n")


def reverse_words_in_a_string_151():
    print("345. Reverse Words in a String")
    input_strings = ['the sky is blue', '  hello world  ', 'a good   example']

    for string in input_strings:
        print(f"input string: {string}")
        rw = ReverseWords(string)
        print(f"result string: {rw.reverse_words()}\n")


def richest_customer_wealth_1672():
    print("1672. Richest Customer Wealth")
    accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    highest_balance = RichestCustomerWealth(accounts)
    print(f"highest_balance: {highest_balance.calculate_richest_customer_wealth()}\n")


def running_sum_of_1d_array_1480():
    print("1480. Running Sum of 1D Array")
    numbers = [3, 1, 2, 10, 1]
    result_list = RunningSumOf1DArray1480(numbers)
    print(f"result_list: {result_list.calculate_running_sum()}\n")


