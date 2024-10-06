# main.exs
# elixir main.exs or
# mix run

# Ensure the required modules are loaded
Code.require_file("lib/utils.ex")  # Load Utils first
Code.require_file("lib/leetcode_elixir.ex")  # Load LeetcodeElixir
Code.require_file("lib/leetcode_elixir/richest_customer_wealth1672.ex")  # Load specific problem modules
Code.require_file("lib/leetcode_elixir/running_sum_of_1d_array1480.ex")

# Call the run function to execute all the problems
LeetCodeElixir.run()

