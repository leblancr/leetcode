require_relative 'running_sum_of_1D_array_1480'
require_relative 'richest_customer_wealth_1672'
require_relative 'fizz_buzz412'
require_relative 'reduce_a_number_to_zero_1342'


def running_sum_of_1D_array_1480()
    puts "1480. Running Sum of 1D Array"
    numbers = [3, 1, 2, 10, 1]
    puts "input_list: #{numbers}"
    result_list = RunningSumOf1DArray1480.new(numbers)
    puts "result_list: #{result_list.calculate_running_sum()}"
    puts
end

def richest_customer_wealth_1672()
    puts "1672. Richest Customer Wealth"
    accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    puts "accounts: #{accounts}"
    highest_balance = RichestCustomerWealth1672.new(accounts)
    puts "highest_balance: #{highest_balance.calculate_richest_customer_wealth()}"
    puts
end

def fizz_buzz_412()
    puts "412. Fizz Buzz"
    limit = 16  # check up to limit
    fb = FizzBuzz412.new(limit)
    output = fb.calculate_fizz_buzz()
    puts "map: " + output.join(', ') + "\n\n"
end

def number_of_steps_to_reduce_a_number_to_zero_1342()
    puts "1342. Number of Steps to Reduce a Number to Zero"
    number = 16
    puts "Number: #{number}"
    reduce_a_number = NumberOfStepsToReduceANumberToZero1342.new(number)
    ns = reduce_a_number.number_of_steps()
    puts "Number of steps: #{ns}\n\n"
end
