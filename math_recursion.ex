defmodule MathRecursion do
  def sum(list) do
    sum_recursive(list)
  end

  defp sum_recursive([head | tail]) do
    head + sum_recursive(tail)
  end

  defp sum_recursive([]), do: 0
end
