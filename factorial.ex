defmodule Factorial do
  def body_recursive_factorial_print(n) do
    # use :timer.tc(fn -> body_recursive_factorial_print(n) end) to measure execution time
    fac = n * body_recursive_factorial(n - 1)

    out(fac, n)
  end

  defp body_recursive_factorial(0), do: 1
  defp body_recursive_factorial(n), do: n * body_recursive_factorial(n - 1)

  def tail_recursive_factorial(n) do
    # use :timer.tc(fn -> tail_recursive_factorial(n) end) to measure execution time
    n
    |> tail_recursive_factorial(1)
    |> out(n)
  end

  defp out(fac, n) do
    IO.puts("Factorial of #{n} is #{fac}.")
  end

  defp tail_recursive_factorial(0, acc), do: acc
  defp tail_recursive_factorial(n, acc) when n > 0, do: tail_recursive_factorial(n - 1, n * acc)
end
