defmodule LeetCodeElixir.StringMerger1768 do
  @moduledoc """
  This module merges two strings alternately, starting with the first string.
  If one string is longer, its remaining characters will be appended.
  It uses an Agent to manage state and perform the calculation.
  """

  import Utils # those functions are here, like puts

  # Starts the Agent, creates state variables with initial default values
  # start_link(args) args = args from application
  # Supervisor calls this function with args where args is
  def start_link(args) do
    puts("Starting Agent for #{__MODULE__} with name #{inspect(__MODULE__)}")
    Agent.start_link(fn -> %{args: args, result: "", status: :calculating} end, name: __MODULE__)
   end

  @doc """
  Take the state.args, do something with it, update state variables at the end.
  """
  def calculate() do
    puts("Merging strings...")

    Agent.update(__MODULE__, fn state ->
      # Get the two words from the agent's state (args)
      # [word1, word2] = state.args

      # Merge the strings
      result = merge(state.args)

      # Update the agent's state
      %{state | result: result, status: :done}
    end)
  end

  # Function to merge two strings alternately
  # graphemes/1 = string to list of chars
  # Recursively call merge_helper/3 concatenating the head of each list to result.
  defp merge(words) do
    # Create lists of graphemes (chars)
    graphemes_lists = Enum.map(words, &String.graphemes/1) # &String.graphemes/1 = fn word -> String.graphemes(word) end
    #merge_helper(String.graphemes(word1), String.graphemes(word2), "")
    merge_helper(graphemes_lists, "")
  end

  # Helper function to perform the merging
#  # case of two empty lists
#  defp merge_helper([], [], result), do: result
#
#  # case of second word empty string, keep calling this prepending one char each time
#  # Doesn't concat the whole remaining string in one operation.
#  defp merge_helper([h1 | t1], [], result), do: merge_helper(t1, [], result <> h1)
#
#  # Same as above until t2 is empty.
#  defp merge_helper([], [h2 | t2], result), do: merge_helper([], t2, result <> h2)
#
#  # Concat head of each list of chars to result.
#  defp merge_helper([h1 | t1], [h2 | t2], result) do
#    merge_helper(t1, t2, result <> h1 <> h2) # Directly append characters to the result
#  end

  defp merge_helper([], result), do: result  # Base case: when no more lists are left

  defp merge_helper(lists, result) do
    # Take the head of each non-empty list and merge
    {heads, tails} = Enum.split_with(lists, fn [h | _] -> true; _ -> false end)

    # If heads are non-empty, concatenate and recurse
    if length(heads) > 0 do
      # Concatenate the heads of each list
      new_result = Enum.reduce(heads, result, fn [h | _], acc -> acc <> h end)

      # Remove the first element of each list and recurse
      remaining_lists = Enum.map(heads ++ tails, fn
        [h | t] -> t  # Remove the first character of each non-empty list
        [] -> []      # Keep empty lists as they are
      end)

      merge_helper(remaining_lists, new_result)
    else
      result  # If no more heads, return the result
    end
  end
end