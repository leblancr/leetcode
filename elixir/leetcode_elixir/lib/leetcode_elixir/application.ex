defmodule LeetCodeElixir.Application do
  @moduledoc """
  Documentation for `LeetCodeElixir`.
  Do LeetCode problems in Elixir.
  """

  use Application
  import Utils # those functions are here, like puts

  def start(_type, _args) do
    # Define the children for the supervision tree, modules that use GenServer
    children = [
      #{LeetCodeElixir.IncrementCounter, []},
      {LeetCodeElixir.RunningSumOf1DArray1480, [3, 1, 2, 10, 1]}, # goes to start_link(_args)
      {LeetCodeElixir.RichestCustomerWealth1672, [[1, 2, 3], [3, 2, 1], [4, 5, 6]]}
   ]

    # Start the supervisor
    puts("Starting the GenServers...")
    {:ok, _pid} = Supervisor.start_link(children, strategy: :one_for_one)

    # Give the workers some time to initialize
    :timer.sleep(1000)  # Delay to allow the workers to initialize

    puts "1480. Running Sum of 1D Array"
    result = GenServer.call(LeetCodeElixir.RunningSumOf1DArray1480, :calculate_running_sum)
    puts "1672. Richest Customer Wealth"
    {:ok, _pid}
  end
end