require_relative 'running_sum_of_1D_array_1480'
require_relative 'richest_customer_wealth_1672'
require_relative 'fizz_buzz_412'


def running_sum_of_1D_array_1480()
    puts "1480. Running Sum of 1D Array"
    numbers = [3, 1, 2, 10, 1]
    result_list = RunningSumOf1DArray1480.new(numbers)
    puts "result_list: #{result_list.calculate_running_sum()}"
    puts
end

def richest_customer_wealth_1672()
    print("1672. Richest Customer Wealth")
    accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    highest_balance = RichestCustomerWealth.new(accounts)
    puts "highest_balance: #{highest_balance.calculate_richest_customer_wealth()}"
    puts
end

def fizz_buzz_412()
    puts "412. Fizz Buzz"
    limit = 16  # check up to limit
    fb = FizzBuzz.new(limit)
    fb.calculate_fizz_buzz()
    puts
end
