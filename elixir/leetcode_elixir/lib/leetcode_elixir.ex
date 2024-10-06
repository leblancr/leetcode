# lib/LeetCode_elixir.ex
#Code.require_file("lib/leetcode_elixir/running_sum_of_1d_array1480.ex")
#Code.require_file("lib/leetcode_elixir/richest_customer_wealth1672.ex")
#Code.require_file("lib/leetcode_elixir/fizz_buzz412.ex")

defmodule LeetCodeElixir do
  @moduledoc """
  Documentation for `LeetCodeElixir`.
  Do LeetCode problems in Elixir.
  """
  import Utils

  # alias the necessary modules
  alias LeetCodeElixir.RunningSumOf1DArray1480
  alias LeetCodeElixir.RichestCustomerWealth1672
  alias LeetCodeElixir.FizzBuzz412

  def start(_type, _args) do
    run()
    {:ok, self()}  # Replace with appropriate supervision if needed
  end

  # This function serves as the main entry point to run the problems
  def run do
    puts "Running LeetCode problems in Elixir\n"

    # module.function()
    puts "1480. Running Sum of 1D Array"
    numbers = [3, 1, 2, 10, 1]
    result = RunningSumOf1DArray1480.calculate_running_sum(numbers)
    puts "Running Sum Result: #{inspect(result)}\n"

    puts "1672. Richest Customer Wealth"
    accounts = [[1, 2, 3], [3, 2, 1], [4, 5, 6]]
    richest_wealth = RichestCustomerWealth1672.calculate_richest_customer_wealth(accounts)
    puts "Richest Customer Wealth: #{richest_wealth}\n"

    puts "412. Fizz Buzz"
    limit = 16  # check up to limit
    output = FizzBuzz412.calculate_fizz_buzz(limit)
    puts "output: #{inspect(output)}\n\n"

    puts "1342. Number of Steps to Reduce a Number to Zero"
    number = 16
    puts "Number: #{number}"
    number_of_steps = NumberOfStepsToReduceANumberToZero1342.number_of_steps(number)
    puts "Number of steps: #{inspect(number_of_steps)}\n"
  end
end
