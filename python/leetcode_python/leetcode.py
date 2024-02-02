from running_sum_of_1D_array_1480 import RunningSumOf1DArray1480
from richest_customer_wealth_1672 import RichestCustomerWealth
from fizz_buzz_412 import FizzBuzz


def running_sum_of_1D_array_1480():
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

