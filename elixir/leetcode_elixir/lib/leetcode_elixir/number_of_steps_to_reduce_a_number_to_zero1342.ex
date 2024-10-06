# number_of_steps_to_reduce_a_number_to_zero1342.ex

defmodule NumberOfStepsToReduceANumberToZero1342 do
  @moduledoc """
  1342. Number of Steps to Reduce a Number to Zero
  Given an integer num, return the number of steps to reduce it to zero.
  In one step, if the current number is even, you have to divide it by 2,
  otherwise, you have to subtract 1 from it.
  Returns the number of steps to reduce a number to zero.
  """

  def number_of_steps(num) when num < 0 do
    {:error, "Input must be a non-negative integer."}
  end

  def number_of_steps(num) do
    calculate_steps(num, 0)
  end

  defp calculate_steps(0, steps), do: steps

  defp calculate_steps(num, steps) do
    if rem(num, 2) == 0 do
      calculate_steps(div(num, 2), steps + 1)
    else
      calculate_steps(num - 1, steps + 1)
    end
  end
end