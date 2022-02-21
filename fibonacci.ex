defmodule Fibonacci do
  def call(number) do
    # use :timer.tc(fn -> call(number) end) to measure execution time
    number
    |> calculate()
    |> out(number)
  end

  def print(number) do
    list = [1, 1]
    fib_list(list, number)
  end

  defp out(fib, number) do
    IO.puts("Fibonacci of #{number} is #{fib}")
  end

  defp calculate(number) do
    case number do
      0 -> 0
      1 -> 1
      _ -> calculate(number - 1) + calculate(number - 2)
    end
  end

  defp fib_list(list, 2) do
    Enum.reverse(list)
  end

  defp fib_list(list, number) do
    fib_list([hd(list) + hd(tl(list)) | list], number - 1)
  end
end
