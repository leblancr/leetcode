defmodule LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342 do
  @moduledoc """
  1342. Number of Steps to Reduce a Number to Zero
  Given an integer num, return the number of steps to reduce it to zero.
  In one step, if the current number is even, you have to divide it by 2,
  otherwise, you have to subtract 1 from it.
  Returns the number of steps to reduce a number to zero.
  """
  
  use GenServer
  import Utils # those functions are here, like puts

  def start_link(number) do
    puts("StartLink #{__MODULE__} GenServer")
    GenServer.start_link(__MODULE__, number, name: __MODULE__)
  end

  # create state map, returned map is called state
  def init(number) do
    puts("Initializing #{__MODULE__} GenServer with number: #{number}")
    {:ok, %{number: number, number_of_steps: 0}} # initial starting values
  end

  def handle_cast(:number_of_steps, state) do
    puts("Calculating number of steps...")
    number_of_steps = calculate_steps(state.number, state.number_of_steps)

    # Notify the StatusTracker that this GenServer is done
    GenServer.cast(LeetCodeElixir.StatusTracker, {:gen_server_done, __MODULE__})

    {:reply, number_of_steps, state}
  end

  # Handle messages sent with Process.send_after
  def handle_info(:get_state, state) do
    IO.inspect(state, label: "Current State")
    {:noreply, state}
  end

  # Recursive function to calculate the number of steps using if...else
  defp calculate_steps(0, steps), do: steps
  defp calculate_steps(num, steps) do
    IO.inspect({num, steps}, label: "Recursion Step")

    if rem(num, 2) == 0 do
      calculate_steps(div(num, 2), steps + 1) # Even case
    else
      calculate_steps(num - 1, steps + 1)    # Odd case
    end
  end
end