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

  use GenServer
  import Utils # those functions are here, like puts

  def start_link(limit) do
    puts("StartLink #{__MODULE__} GenServer")
    GenServer.start_link(__MODULE__, limit, name: __MODULE__)
  end

  def init(limit) do
    puts("Initializing #{__MODULE__} GenServer with limit: #{limit}")
    {:ok, %{limit: limit, output: []}}
  end

  def handle_cast(:calculate_fizz_buzz, state) do
    puts("Calculating fizz buzz...")
    output = 1..state.limit
             |> Enum.map(fn
      n when rem(n, 15) == 0 -> "FizzBuzz"
      n when rem(n, 5) == 0 -> "Buzz"
      n when rem(n, 3) == 0 -> "Fizz"
      n -> n
    end)

    # Notify the StatusTracker that this GenServer is done
    GenServer.cast(LeetCodeElixir.StatusTracker, {:gen_server_done, __MODULE__})

    {:reply, output, state}
  end

  # Handle messages sent with Process.send_after
  def handle_info(:get_state, state) do
    IO.inspect(state, label: "Current State")
    {:noreply, state}
  end
end