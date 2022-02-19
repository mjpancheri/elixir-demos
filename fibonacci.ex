defmodule Fibonacci do
  def call(number) do
    begin = Time.utc_now()

    fib = calculate(number)

    IO.puts(
      "Fibonacci of #{number} is #{fib} in #{Time.diff(Time.utc_now(), begin, :microsecond)} microseconds"
    )
  end

  def print(number) do
    list = [1, 1]
    fib_list(list, number)
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
