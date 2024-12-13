defmodule LeetCodeElixir.RichestCustomerWealth1672 do
  @moduledoc false
  
  use GenServer
  import Utils # those functions are here, like puts

  def start_link(accounts) do
    puts("StartLink #{__MODULE__} GenServer")
    GenServer.start_link(__MODULE__, accounts, name: __MODULE__)
  end

  @doc """
  Initializes the state of the GenServer, the variables, lists, maps or other data structures.
  Takes a list of accounts and returns a number:
  - `:accounts`: the original list of accounts
  - `:result`: a number to represent the highest wealth.

  The state is represented as a map, with `accounts` and `result` as keys.
    Just declares and returns them, nothing more.
  """
  def init(accounts) do
    puts("Initializing #{__MODULE__} GenServer with accounts: #{inspect(accounts)}")
    {:ok, %{accounts: accounts, result: 0, status: :calculating}}
  end

  def handle_call(:get_status, _from, state) do
    # Always return the current status and the result keys
    # Values are state variables from init/1
    {:reply, %{status: state.status, result: state.result}, state}
  end

  def handle_cast(:calculate_richest_customer_wealth, state) do
    puts("Calculating richest customer wealth...")
    result = state.accounts
    |> Enum.map(&Enum.sum/1) #
    |> Enum.max()

    # Update the state with the result and change status to :done
    {:noreply, %{state | result: result, status: :done}}
  end
end