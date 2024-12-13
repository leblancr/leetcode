defmodule LeetCodeElixir.Application do
  use Application
  import Utils # Assuming this module exists

  alias LeetCodeElixir.RunningSumOf1DArray1480
#  alias LeetCodeElixir.RichestCustomerWealth1672
#  alias LeetCodeElixir.FizzBuzz412
#  alias LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342
#  alias LeetCodeElixir.StatusPoller

  def start(_type, _args) do
    data = [
      %{module: RunningSumOf1DArray1480, args: [3, 1, 2, 10, 1], message: :calculate_running_sum},
#      %{module: RichestCustomerWealth1672, args: [[1, 2, 3], [3, 2, 1], [4, 5, 6]], message: :calculate_richest_customer_wealth},
#      %{module: FizzBuzz412, args: 16, message: :calculate_fizz_buzz},
#      %{module: NumberOfStepsToReduceANumberToZero1342, args: 16, message: :number_of_steps},
#      %{module: StatusPoller, args: nil, message: :status_poller}
    ]

#    children = Enum.map(data, fn %{module: module, args: args} ->
#      {module, args}
#    end)

    # id: module: This specifies a unique identifier for each child.
    # It's used by the supervisor to track the child processes.
    # :start_link: This is the function we want to call to start the agent.
    children = Enum.map(data, fn %{module: module, args: args} ->
      %{
        id: module, # Unique identifier for the child
        start: {Agent, :start_link, [fn -> %{numbers: args, result: [], status: :pending} end,
          [name: module]]} # options
      }
    end)

    inspect(children, label: "Children specs") # Log to inspect the child specs
    puts(inspect(children))

    modules_and_messages = Enum.map(data, fn %{module: module, message: message} -> {module, message} end)

    puts("Starting the Agents...")
    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)
    inspect(pid, label: "Supervisor PID") # Log the supervisor PID
    Enum.each(data, fn %{module: module, args: args} ->
      puts("Checking state of agent #{inspect(module)}...")
      inspect(Agent.get(module, fn state -> state end))
    end)

    # Start the work for each GenServer
    start_agent_work(modules_and_messages)

    # No need to explicitly call poll_status here
    # puts("Status polling started automatically...")

    {:ok, pid}
  end

  defp start_agent_work(modules_and_messages) do
    puts("\nStarting the work...")

    Enum.each(modules_and_messages, fn {module, _msg} ->
      puts("Updating agent state to calculate running sum for #{inspect(module)}")

      # Directly update the agent's state
      Agent.update(module, fn state ->
        puts("Inside Agent.update, current state: #{inspect(state)}")

        # Calculate the running sum
        running_sums =
          Enum.reduce(state.numbers, {[], 0}, fn number, {sums, acc} ->
            new_acc = acc + number
            {[new_acc | sums], new_acc}
          end)
          |> elem(0)  # Get the first element of the tuple (the accumulated result)

        # Reverse the list to get the running sums in the correct order
        running_sums = Enum.reverse(running_sums)

        # Return the updated state
        updated_state = %{state | result: running_sums, status: :done}
        IO.puts("Updated state: #{inspect(updated_state)}")
        updated_state
      end)
    end)
  end

#  defp start_genserver_work(modules_and_messages) do
#    puts("\nStarting the work...")
#
#    Enum.each(modules_and_messages, fn {module, msg} ->
#      puts("Sending message :#{msg} to #{inspect(module)}")
#      GenServer.cast(module, msg)
#    end)
#  end
end
