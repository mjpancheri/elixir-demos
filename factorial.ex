defmodule Factorial do
  def body_recursive_factorial_print(n) do
    begin = Time.utc_now()

    fac = n * body_recursive_factorial(n - 1)

    IO.puts(
      "Factorial of #{n} is #{fac}. Executed in #{Time.diff(Time.utc_now(), begin, :microsecond)} microseconds"
    )
  end

  defp body_recursive_factorial(0), do: 1
  defp body_recursive_factorial(n), do: n * body_recursive_factorial(n - 1)

  def tail_recursive_factorial(n) do
    begin = Time.utc_now()

    fac = tail_recursive_factorial(n, 1)

    IO.puts(
      "Factorial of #{n} is #{fac}. Executed in #{Time.diff(Time.utc_now(), begin, :microsecond)} microseconds"
    )
  end

  defp tail_recursive_factorial(0, acc), do: acc
  defp tail_recursive_factorial(n, acc) when n > 0, do: tail_recursive_factorial(n - 1, n * acc)
end
