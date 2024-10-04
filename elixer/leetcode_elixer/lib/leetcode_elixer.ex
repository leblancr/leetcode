defmodule LeetcodeElixer do
  @moduledoc """
  Documentation for `LeetcodeElixer`.
    Do Leetcode problems in Elixir
  """

  IO.puts "Running Leetcode problems in Elixir"

  defmodule RunningSumOf1DArray1480 do
    @moduledoc false

    @doc """
    Calculates the running sum of a 1D array.
    """
    def calculate_running_sum(numbers) do
      IO.puts "1480. Running Sum of 1D Array"
      IO.puts "input_list: #{inspect(numbers)}"

      result = Enum.reduce(numbers, {[], 0}, fn number, {result, running_sum} ->
        new_running_sum = running_sum + number
        {result ++ [new_running_sum], new_running_sum}
      end)
      |> elem(0) # Returns the accumulated result
      IO.puts "input_list: #{inspect(result)}"
    end
  end
end
