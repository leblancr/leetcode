defmodule LeetCodeElixir.StatusPoller do
  use GenServer

  # Start the StatusPoller GenServer
  def start_link(_) do
    IO.puts("Starting StatusPoller...")
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  # Initialization (on start)
  def init(_) do
    IO.puts("StatusPoller Initialized...")
    # Schedule the first poll immediately
    schedule_poll()
    {:ok, %{}}
  end

  # Handle the polling logic (called every time a poll is triggered)
  def handle_info(:poll, state) do
    IO.puts("Polling status...")

    # Call each GenServer for status
    running_sum_status = GenServer.call(LeetCodeElixir.RunningSumOf1DArray1480, :get_status)
    richest_customer_status = GenServer.call(LeetCodeElixir.RichestCustomerWealth1672, :get_status)
    fizz_buzz_status = GenServer.call(LeetCodeElixir.FizzBuzz412, :get_status)
    number_of_steps_status = GenServer.call(LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342, :get_status)

    # Log the statuses of all tasks
    IO.puts("RunningSumOf1DArray1480 status: #{inspect(running_sum_status)}")
    IO.puts("RichestCustomerWealth1672 status: #{inspect(richest_customer_status)}")
    IO.puts("FizzBuzz412 status: #{inspect(fizz_buzz_status)}")
    IO.puts("NumberOfStepsToReduceANumberToZero1342 status: #{inspect(number_of_steps_status)}")

    # If all tasks are done, stop polling
    if all_tasks_done?([running_sum_status, richest_customer_status, fizz_buzz_status, number_of_steps_status]) do
      IO.puts("All tasks completed!")
      GenServer.stop(self())  # Stop polling when done
    else
      IO.puts("Tasks still in progress... scheduling next poll.")
      schedule_poll()  # Schedule the next poll
    end

    {:noreply, state}
  end

  # Helper function to schedule the next poll
  defp schedule_poll do
    IO.puts("Scheduling next poll...")
    Process.send_after(self(), :poll, 1000)  # Poll every 1 second
  end

  # Check if all tasks are done (i.e., if all statuses are :done)
  defp all_tasks_done?(statuses) do
    Enum.all?(statuses, fn %{status: status} -> status == :done end)
  end
end