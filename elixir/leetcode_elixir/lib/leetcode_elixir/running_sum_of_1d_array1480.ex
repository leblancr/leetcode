defmodule LeetCodeElixir.RunningSumOf1DArray1480 do
  @moduledoc false

  use GenServer
  import Utils # those functions are here, like puts

  def calculate() do
    puts("Calculating running sum...")

    Agent.update(__MODULE__, fn state ->
      running_sums =
        Enum.reduce(state.numbers, {[], 0}, fn number, {sums, acc} ->
          new_acc = acc + number
          {[new_acc | sums], new_acc}
        end)
        |> elem(0)
        |> Enum.reverse()

      %{state | result: running_sums, status: :done}
    end)
  end

  # Starts the Agent
  def start_link(numbers) do
    puts("StartLink for #{__MODULE__} with name #{inspect(__MODULE__)}")
    Agent.start_link(fn -> %{numbers: numbers, result: [], status: :calculating} end, name: __MODULE__)
  end

  # Function to fetch the status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end

#  # Starts the GenServer
#  def start_link(numbers) do
#    puts("StartLink for #{__MODULE__} with name #{inspect(__MODULE__)}")
#    GenServer.start_link(__MODULE__, numbers, name: __MODULE__)  # calls init/1 with the argument numbers
#  end
#
#  @doc """
#  Initializes the state of the GenServer, the variables, lists, or other data structures.
#  Takes a list of numbers and returns a map with two keys:
#  - `:numbers`: the original list of numbers
#  - `:result`: an empty list to store the running sum.
#  - `:status`: the current status of the GenServer (e.g., :calculating, :done)
#  """
#  def init(numbers) do
#    puts("Initializing #{__MODULE__} GenServer with numbers: #{inspect(numbers)}")
#    {:ok, %{numbers: numbers, result: [], status: :calculating}}  # Add :status key to track the current state
#  end
#
#  def handle_call(:get_status, _from, state) do
#    # Always return the current status and the result keys
#    # Values are state variables from init/1
#    {:reply, %{status: state.status, result: state.result}, state}
#  end
#
#  @doc """
#  The Enum.reduce/3 function is used to accumulate the running sum.
#  "Reduce" is really "Processing" the List.
#  Enum.reduce/3 takes three arguments:
#     1. state.numbers: The list you are iterating over (the numbers).
#     2. {[], 0}: The initial accumulator, which is a tuple.
#        The first element [] will hold the list of running sums,
#        and the second element 0 represents the initial sum.
#        The accumulator (the tuple in this case) is the value that gets passed from one iteration to the next.
#     3. The anonymous function: The function that processes each element in the list.
#        fn arg1, arg2 ->
#          function body
#        end
#  For each number in numbers, you update the running sum (running_sum + number) and
#  prepend it to the result list ([new_running_sum | running_sums], new_running_sum).
#  The | operator is used to prepend an element to the front of a list.
#  {[new_running_sum | running_sums], new_running_sum}
#  This is a tuple with two values:
#  The first value is a new list where new_running_sum is prepended to running_sums.
#  The second value is the updated running_sum, which is the sum of all numbers processed so far.
#  Finally, elem(0) is used to get the first element of the tuple, which is the accumulated list of running sums.
#  This is the result list before reversing it to match the correct order.
#  """
#  def handle_cast(:calculate_running_sum, state) do
#    puts("Calculating running sum...")
#
#    # Calculate the running sum
#    running_sums = Enum.reduce(state.numbers,
#                     {[], 0},
#                     fn number, {running_sums, running_sum} ->
#                       new_running_sum = running_sum + number  # Update the running sum
#                       {[new_running_sum | running_sums], new_running_sum}  # Prepend new sum to the result list
#                     end
#                   )
#                   |> elem(0)  # Get the first element of the tuple (the accumulated result)
#
#    # Reverse the list to get the running sums in the correct order.
#    running_sums = Enum.reverse(running_sums)
#
#    # Update the state with the result and change status to :done
#    {:noreply, %{state | result: running_sums, status: :done}}
#  end
end