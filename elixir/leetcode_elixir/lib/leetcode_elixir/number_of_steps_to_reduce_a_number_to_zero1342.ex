defmodule LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342 do
  use GenServer
  import Utils # those functions are here, like puts

  def start_link(initial_number) do
    puts("Starting GenServer for NumberOfStepsToReduceANumberToZero1342 with arg: #{initial_number}")
    GenServer.start_link(__MODULE__, initial_number, name: __MODULE__)
  end

  def init(number) do
    {:ok, %{number: number, status: :calculating, result: nil}}
  end

  def handle_cast(:number_of_steps, state) do
    steps = calculate_steps(state.number)
    {:noreply, %{state | status: :done, result: steps}}
  end

  def handle_call(:get_status, _from, state) do
    {:reply, %{status: state.status, result: state.result}, state}
  end

  defp calculate_steps(number) do
    calculate_steps(number, 0)
  end

  defp calculate_steps(0, steps) do
    steps
  end

  defp calculate_steps(number, steps) when rem(number, 2) == 0 do
    Process.sleep(1000)
    calculate_steps(div(number, 2), steps + 1)
  end

  defp calculate_steps(number, steps) when rem(number, 2) != 0 do
    Process.sleep(1000)
    calculate_steps(number - 1, steps + 1)
  end
end
