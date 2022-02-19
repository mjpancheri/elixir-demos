defmodule Accumulators do
  def odds_and_evens(original_list) do
    odds_and_evens_acc(original_list, [], [])
  end

  defp odds_and_evens_acc([heas | tail], odds_list, evens_list) do
    case rem(heas, 2) do
      0 -> odds_and_evens_acc(tail, odds_list, [heas | evens_list])
      1 -> odds_and_evens_acc(tail, [heas | odds_list], evens_list)
    end
  end

  defp odds_and_evens_acc([], odds_list, evens_list),
    do: {Enum.reverse(odds_list), Enum.reverse(evens_list)}
end
