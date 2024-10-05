defmodule LeetcodeElixir.FizzBuzz412 do
  @moduledoc """
  This module has one function: `calculate_fizz_buzz/1`.

  `calculate_fizz_buzz/1` loops through numbers up to a given limit,
  appending strings to the output list based on divisibility:

  - If a number is divisible by both 3 and 5, append 'FizzBuzz'.
  - If a number is divisible by 5, append 'Buzz'.
  - If a number is divisible by 3, append 'Fizz'.

  ## Examples

      iex> FizzBuzz412.calculate_fizz_buzz(16)
      ["Fizz", "Buzz", "Fizz", "Fizz", "Buzz", "Fizz", "FizzBuzz", ...]
  """
  import Utils

  # map takes and returns a list
  # map each item in the list to a function
  # 1..limit is input list
  def calculate_fizz_buzz(limit) do
    puts "limit: #{limit}"
    1..limit
    |> Enum.map(fn
      n when rem(n, 15) == 0 -> "FizzBuzz"
      n when rem(n, 5) == 0 -> "Buzz"
      n when rem(n, 3) == 0 -> "Fizz"
      n -> n
    end)
  end
end