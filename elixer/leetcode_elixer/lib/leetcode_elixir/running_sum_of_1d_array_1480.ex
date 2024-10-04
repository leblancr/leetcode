# lib/leetcode_elixer/running_sum_of_1d_array_1480.ex

defmodule LeetcodeElixir.RunningSumOf1DArray1480 do
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

    IO.puts "result_list: #{inspect(result)}"
    result
  end
end
