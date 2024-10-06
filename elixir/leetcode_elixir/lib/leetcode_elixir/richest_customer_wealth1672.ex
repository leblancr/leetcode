# lib/leetcode_elixir/richest_customer_wealth1672.ex

defmodule LeetCodeElixir.RichestCustomerWealth1672 do
  @moduledoc false
  import Utils

  @doc """
  Calculates the richest customer's wealth from their accounts.
  """
  def calculate_richest_customer_wealth(accounts) do
    puts "input_list: #{inspect(accounts)}"
    result = accounts
      |> Enum.map(&Enum.sum/1)
      |> Enum.max()
      puts "result: #{result}"
  end
end
