defmodule LeetCodeElixir.IncrementCounter do
  @moduledoc false

  use GenServer
  import Utils # those functions are here, like puts

  # Callbacks
  def start_link(_args) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    puts("Initializing the GenServer with counter set to 0...")
    {:ok, %{counter: 0}} # Initial state
  end

  def handle_call(:get_counter, _from, state) do
    puts("Current counter: #{state.counter}")  # Print the counter
    {:reply, state.counter, state}
  end

  def handle_cast(:increment, state) do
    new_state = %{state | counter: state.counter + 1}
    puts("Counter incremented to: #{new_state.counter}")  # Print the updated counter
    {:noreply, new_state}
  end
end