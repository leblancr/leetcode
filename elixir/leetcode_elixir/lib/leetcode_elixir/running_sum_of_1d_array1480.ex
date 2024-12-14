defmodule LeetCodeElixir.RunningSumOf1DArray1480 do
  @moduledoc false

  use GenServer
  import Utils # those functions are here, like puts

  # Starts the Agent, creates state variables with initial default values
  # start_link(args) args = args from application
  # Supervisor calls this function with args where args is
  def start_link(args) do
    puts("StartLink for #{__MODULE__} with name #{inspect(__MODULE__)}")
    Agent.start_link(fn -> %{args: args, result: [], status: :calculating} end, name: __MODULE__)
  end

  @doc """

  """
  def calculate() do
    puts("Calculating running sum...")

    Agent.update(__MODULE__, fn state ->
      running_sums =
        Enum.reduce(state.args, {[], 0}, fn number, {sums, acc} ->
          new_acc = acc + number
          {[new_acc | sums], new_acc}
        end)
        |> elem(0)
        |> Enum.reverse()

      %{state | result: running_sums, status: :done}
    end)
  end

  # Function to fetch the status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end
end