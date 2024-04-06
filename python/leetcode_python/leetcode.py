from running_sum_of_1D_array_1480 import RunningSumOf1DArray1480
from richest_customer_wealth_1672 import RichestCustomerWealth
from fizz_buzz_412 import FizzBuzz
from reduce_a_number_to_zero_1342 import NumSteps
from merge_strings_alternately_1768 import MergeStrings
from reverse_vowels_of_a_string_345 import ReverseVowels


def running_sum_of_1d_array_1480():
    print("1480. Running Sum of 1D Array")
    numbers = [3, 1, 2, 10, 1]
    result_list = RunningSumOf1DArray1480(numbers)
    print(f"result_list: {result_list.calculate_running_sum()}\n")


def richest_customer_wealth_1672():
    print("1672. Richest Customer Wealth")
    accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    highest_balance = RichestCustomerWealth(accounts)
    print(f"highest_balance: {highest_balance.calculate_richest_customer_wealth()}\n")


def fizz_buzz_412():
    print("412. Fizz Buzz")
    limit = 16  # check up to limit
    fb = FizzBuzz(limit)
    fb.calculate_fizz_buzz()


def reduce_a_number_to_zero_1342():
    print("1342. Number of Steps to Reduce a Number to Zero")
    number = 16
    ns = NumSteps(number)
    print(f"Number of steps to reduce {number} to zero: {ns.number_of_steps()}\n")


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


def reverse_vowels_of_a_string():
    print("345. Reverse Vowels of a String")
    input_strings = ['hello', 'leetcode', 'xylophone']

    for string in input_strings:
        print(f"input string: {string}")
        rv = ReverseVowels(string)
        print(f"result string: {rv.reverse_vowels()}\n")

