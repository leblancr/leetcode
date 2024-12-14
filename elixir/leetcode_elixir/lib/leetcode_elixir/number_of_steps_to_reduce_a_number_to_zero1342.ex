defmodule LeetCodeElixir.NumberOfStepsToReduceANumberToZero1342 do
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
    puts("Calculating number of steps...")

    Agent.update(__MODULE__, fn state ->
      steps = state.args
      |> calculate_steps()

      %{state | status: :done, result: steps}
    end)
  end


  defp calculate_steps(number) do
    puts "Number: #{number}"
    calculate_steps(number, 0)
  end

  defp calculate_steps(0, steps) do
    puts "Number, steps: 0, #{steps}"
    steps
  end

  defp calculate_steps(number, steps) do
    if rem(number, 2) == 0 do
      puts "Step #{steps + 1}: #{number}/2 = #{div(number, 2)}"
    else
      puts "Step #{steps + 1}: #{number} - 1 = #{number - 1}"
    end

    # Determine the next number based on whether it's even or odd
    next_number = if rem(number, 2) == 0, do: div(number, 2), else: number - 1

    # Recursively call calculate_steps with the updated number and steps
    calculate_steps(next_number, steps + 1)
  end

  # Function to fetch the status and result
  def get_status do
    Agent.get(__MODULE__, fn state -> %{status: state.status, result: state.result} end)
  end
end
