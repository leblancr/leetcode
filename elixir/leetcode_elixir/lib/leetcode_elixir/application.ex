defmodule LeetCodeElixir.Application do
  use Application
  import Utils # Assuming this module exists

  alias LeetCodeElixir.RunningSumOf1DArray1480
  alias LeetCodeElixir.RichestCustomerWealth1672
  alias LeetCodeElixir.FizzBuzz412
  alias LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342

  def start(_type, _args) do
    data = [
      %{module: RunningSumOf1DArray1480, args: [3, 1, 2, 10, 1]},
      %{module: RichestCustomerWealth1672, args: [[1, 2, 3], [3, 2, 1], [4, 5, 6]]},
      %{module: FizzBuzz412, args: 16},
      %{module: NumberOfStepsToReduceANumberToZero1342, args: 32}
    ]

    # id: module: This specifies a unique identifier for each child.
    # It's used by the supervisor to track the child processes.
    # :start_link: This is the function we want to call to start the agent.
    # data is a list of maps
    # for each map get module and args and return a new map
    children = Enum.map(data, fn %{module: module, args: args} ->
      %{
        id: module, # Unique identifier for the child (module name)
        start: {Agent, :start_link, [fn -> %{args: args, result: nil, status: :pending} end,
          [name: module]]} # options
      }
    end)

    IO.inspect(children, label: "Children specs") # Log to inspect the child specs
    IO.inspect(children)

    #
    puts("Starting the Agents...")
    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

    # Display children
    IO.inspect(pid, label: "Supervisor PID") # Log the supervisor PID
    Enum.each(data, fn %{module: module, args: args} ->
      puts("Checking state of agent #{inspect(module)}...")
      IO.inspect(Agent.get(module, fn state -> state end))
    end)

    # Start the work for each GenServer
    start_agent_work(data)

    {:ok, pid}
  end

  def start_agent_work(data) do
    puts("\nStarting the work...")

    Enum.each(data, fn %{module: module, args: _args} ->
      puts("Updating state for #{inspect(module)}...")

      # Directly call the calculate function for each module
      module.calculate()

      # After calculation, inspect the state of the Agent
      new_state = Agent.get(module, fn state -> state end)
      IO.inspect(new_state, label: "Updated State for #{inspect(module)}")
    end)
  end
end
