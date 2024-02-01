import running_sum_of_1D_array_1480
import richest_customer_wealth_1672
import fizz_buzz_412


class Leetcode():
    def running_sum_of_1D_array_1480(self):
        print("1480. Running Sum of 1D Array")
        numbers = [3, 1, 2, 10, 1]
        result_list = running_sum_of_1D_array_1480.calculate_running_sum(numbers)
        print(f"result_list: {result_list}\n")

    def richest_customer_wealth_1672(self):
        print("1672. Richest Customer Wealth")
        accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        highest_balance = richest_customer_wealth_1672.calculate_richest_customer_wealth(accounts)
        print(f"highest_balance: {highest_balance}\n")

    def fizz_buzz_412(self):
        print("412. Fizz Buzz")
        limit = 16  # check up to limit
        fizz_buzz_412.calculate_fizz_buzz(limit)
