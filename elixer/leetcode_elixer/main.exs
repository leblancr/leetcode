# main.exs

# Ensure the required modules are loaded
Code.require_file("lib/utils.ex")  # Load Utils first
Code.require_file("lib/leetcode_elixir.ex")  # Load LeetcodeElixir
Code.require_file("lib/leetcode_elixir/richest_customer_wealth_1672.ex")  # Load specific problem modules
Code.require_file("lib/leetcode_elixir/running_sum_of_1d_array_1480.ex")

# Call the run function to execute all the problems
LeetcodeElixir.run()
