# lib/leetcode_elixir.ex

defmodule LeetcodeElixir do
  @moduledoc """
  Documentation for `LeetcodeElixir`.
  Do Leetcode problems in Elixir.
  """

  # Import or alias the necessary modules
  alias LeetcodeElixir.RunningSumOf1DArray1480
  alias LeetcodeElixir.RichestCustomerWealth

  # This function serves as the main entry point to run the problems
  def run do
    IO.puts "Running Leetcode problems in Elixir"

    # Example: Running Sum of 1D Array
    numbers = [3, 1, 2, 10, 1]
    result = RunningSumOf1DArray1480.calculate_running_sum(numbers)
    IO.puts "Running Sum Result: #{inspect(result)}"

    # Example: Richest Customer Wealth
    accounts = [[1, 2, 3], [3, 2, 1], [4, 5, 6]]
    richest_wealth = RichestCustomerWealth.calculate_richest_customer_wealth(accounts)
    IO.puts "Richest Customer Wealth: #{richest_wealth}"

    # Additional function calls can be added here
  end
end
