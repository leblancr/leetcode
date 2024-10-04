# lib/leetcode_elixir/richest_customer_wealth.ex

defmodule LeetcodeElixir.RichestCustomerWealth do
  @moduledoc false

  @doc """
  Calculates the richest customer's wealth from their accounts.
  """
  def calculate_richest_customer_wealth(accounts) do
    accounts
    |> Enum.map(&Enum.sum/1)
    |> Enum.max()
  end
end
