defmodule LeetCodeElixir.RunningSumOf1DArray1480 do
  @moduledoc false

  import Utils # those functions are here, like puts

  # Starts the Agent, creates state variables with initial default values
  # start_link(args) args = args from application
  # Supervisor calls this function with args where args is
  def start_link(args) do
    puts("Starting Agent for #{__MODULE__} with name #{inspect(__MODULE__)}")
    Agent.start_link(fn -> %{args: args, result: [], status: :calculating} end, name: __MODULE__)
  end

  @doc """
  It passes an anonymous function (fn state -> ... end) that receives
  the current state of the Agent and returns the updated state.
    Returns:
  A list, the running sums.

  Enum.reduce(collection, accumulator, fn element, accumulator -> new_accumulator end)

    collection: The collection (such as a list, range, etc.) you want to iterate over.
    accumulator: The initial value that the reduction will start with.
    fn element, accumulator -> new_accumulator end:
  The anonymous function that specifies how each element in the collection should be processed,
  using the accumulator. The result of this function will be the new accumulator.

  Enum.reduce/3 takes three arguments and returns a single result.
  """
  def calculate() do
    puts("Calculating running sum...")

    Agent.update(__MODULE__, fn state ->
      running_sum =
        # {[], 0} is called {sums, acc} in fn
        Enum.reduce(state.args, {[], 0}, fn number, {sums, acc} ->
            new_acc = acc + number #
            {[new_acc | sums], new_acc} # returns this tuple, new_acc prepended to sums
          end # end of anonymous function
        ) # end of reduce
        |> elem(0) #
        |> Enum.reverse()

        %{state | result: running_sum, status: :done}
    end) # end of update
  end

  # Function to fetch the status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end
end