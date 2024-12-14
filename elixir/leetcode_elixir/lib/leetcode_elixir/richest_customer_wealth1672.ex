defmodule LeetCodeElixir.RichestCustomerWealth1672 do
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
  Take the state.args, do something with it, update state variables at the end.
  """
  def calculate() do
    puts("Calculating richest customer wealth...")

    Agent.update(__MODULE__, fn state ->
      result = state.args
      |> Enum.map(&Enum.sum/1) #
      |> Enum.max()

      # Update the state with the result and change status to :done
      %{state | result: result, status: :done}
    end)
  end

  # Function to fetch the status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end
end