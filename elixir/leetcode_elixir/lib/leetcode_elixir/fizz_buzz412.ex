defmodule LeetCodeElixir.FizzBuzz412 do
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

  import Utils # those functions are here, like puts

  # Starts the Agent, creates state variables with initial default values
  # start_link(args) args = args from application
  # Supervisor calls this function with args where args is
  def start_link(args) do
    puts("Starting Agent for #{__MODULE__} with name #{inspect(__MODULE__)}")
    Agent.start_link(fn -> %{args: args, result: [], status: :calculating} end, name: __MODULE__)
  end

  @doc """
  Take the state.args, do something with it, update state variables at the end.
  """
  def calculate() do
    puts("Calculating fizz buzz...")

    Agent.update(__MODULE__, fn state ->
      output = 1..state.args
      |> Enum.map(fn
        n when rem(n, 15) == 0 -> "FizzBuzz"
        n when rem(n, 5) == 0 -> "Buzz"
        n when rem(n, 3) == 0 -> "Fizz"
        n -> n
      end)

      # Update the state with the result and change status to :done
      %{state | result: output, status: :done}
    end)
  end

  # Function to fetch the current status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end
end