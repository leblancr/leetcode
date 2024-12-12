defmodule LeetCodeElixir.Application do
  use Application
  import Utils # those functions are here, like puts

  def start(_type, _args) do
    numbers = [3, 1, 2, 10, 1]
    accounts = [[1, 2, 3], [3, 2, 1], [4, 5, 6]]
    limit = 16
    number = 16

    children = [
      {LeetCodeElixir.RunningSumOf1DArray1480, numbers},
      {LeetCodeElixir.RichestCustomerWealth1672, accounts},
#      {LeetCodeElixir.FizzBuzz412, limit},
#      {LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342, number}
    ]

    modules_and_messages = [
      {LeetCodeElixir.RunningSumOf1DArray1480, :calculate_running_sum},
      {LeetCodeElixir.RichestCustomerWealth1672, :calculate_richest_customer_wealth},
#      {LeetCodeElixir.FizzBuzz412, :calculate_fizz_buzz},
#      {LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342, :number_of_steps}
    ]

    puts("Starting the GenServers...")
    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

    # Ensure all are running
    puts("\nSupervisor started with PID: #{inspect(pid)}")
    Enum.each(children, fn {module, _args} ->
      puts("GenServer for #{inspect(module)} started with pid: #{inspect(Process.whereis(module))}")
    end)

    # Start the work for each GenServer
    start_genserver_work(modules_and_messages)

    # Track GenServer status directly in Application (no need for StatusTracker)
    track_genservers_status(modules_and_messages)

    {:ok, pid}
  end

  defp start_genserver_work(modules_and_messages) do
    puts("\nStarting the work...")

    Enum.each(modules_and_messages, fn {module, msg} ->
      puts("Sending message :#{msg} to #{inspect(module)}")
      GenServer.cast(module, msg)
    end)
  end

  defp track_genservers_status(modules_and_messages) do
    puts("Polling every second...")

    # Start polling each GenServer's status every second
    schedule_state_check(modules_and_messages)
  end

  defp schedule_state_check(modules_and_messages) do
    Enum.each(modules_and_messages, fn {module, _msg} ->
      case GenServer.call(module, :get_status) do
        %{status: :done, result: result} ->
          puts("Status of #{inspect(module)}: done")
          puts("Result of #{inspect(module)}: #{inspect(result)}")

        %{status: :calculating} ->
          puts("Status of #{inspect(module)}: still calculating")
      end
    end)

    # Re-schedule after 1 second, regardless of status
    Process.send_after(self(), :check_responses, 1000)
  end
end