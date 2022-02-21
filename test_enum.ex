defmodule TestEnum do
  def show_reduce(list) do
    list
    |> Enum.reduce(%{}, fn elem, acc ->
      IO.inspect(elem)
      IO.inspect(acc)
      Map.put(acc, elem, elem)
    end)
  end

  def show_into(range) do
    range
    |> Enum.into(%{}, &{Integer.to_string(&1), 0})
  end
end
