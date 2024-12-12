defmodule LeetCodeElixir.RunningSumOf1DArray1480 do
  @moduledoc false

  use GenServer
  import Utils # those functions are here, like puts

  # Starts the GenServer
  def start_link(numbers) do
    puts("StartLink for #{__MODULE__} with name #{inspect(__MODULE__)}")
    GenServer.start_link(__MODULE__, numbers, name: __MODULE__)  # calls init/1 with the argument numbers
  end

  @doc """
  Initializes the state of the GenServer, the variables, lists, or other data structures.
  Takes a list of numbers and returns a map with two keys:
  - `:numbers`: the original list of numbers
  - `:result`: an empty list to store the running sum.

  The state is represented as a map, with `numbers` and `result` as keys.
  """
  def init(numbers) do
    puts("Initializing #{__MODULE__} GenServer with numbers: #{inspect(numbers)}")
    {:ok, %{numbers: numbers, result: []}}  # State holds an empty list for numbers and result
  end

  @doc """
  The Enum.reduce/3 function is used to accumulate the running sum.
  "Reduce" is really "Processing" the List.
  Enum.reduce/3 takes three arguments:
     1. state.numbers: The list you are iterating over (the numbers).
     2. {[], 0}: The initial accumulator, which is a tuple.
        The first element [] will hold the list of running sums,
        and the second element 0 represents the initial sum.
        The accumulator (the tuple in this case) is the value that gets passed from one iteration to the next.
     3. The anonymous function: The function that processes each element in the list.
        fn arg1, arg2 ->
          function body
        end
  For each number in numbers, you update the running sum (running_sum + number) and
  prepend it to the result list ([new_running_sum | running_sums], new_running_sum).
  The | operator is used to prepend an element to the front of a list.
  {[new_running_sum | running_sums], new_running_sum}
  This is a tuple with two values:
  The first value is a new list where new_running_sum is prepended to running_sums.
  The second value is the updated running_sum, which is the sum of all numbers processed so far.
  Finally, elem(0) is used to get the first element of the tuple, which is the accumulated list of running sums.
  This is the result list before reversing it to match the correct order.
  """
  def handle_cast(:calculate_running_sum, state) do
    puts("Calculating running sum...")
    running_sums = Enum.reduce(state.numbers,
                     {[], 0},
                     fn number, {running_sums, running_sum} ->
                       new_running_sum = running_sum + number  # Update the running sum
                       {[new_running_sum | running_sums], new_running_sum}  # Prepend new sum to the result list
                     end
                   )
                   |> elem(0)  # Get the first element of the tuple (the accumulated result)

    # Reverse the list to get the running sums in the correct order.
    running_sums = Enum.reverse(running_sums)
    puts("Running sum calculated: #{inspect(running_sums)}")

    # Notify the StatusTracker that this GenServer is done
    GenServer.cast(LeetCodeElixir.StatusTracker, {:gen_server_done, __MODULE__})

    # Update the state with the result and return the result.
    # We replace `state.numbers` with the original `state` map and use the `running_sums` as the new result.
    {:reply, running_sums, %{state | result: running_sums}}
  end

  # Handle messages sent with Process.send_after
  def handle_info(:get_state, state) do
    IO.inspect(state, label: "Current State")
    {:noreply, state}
  end
end