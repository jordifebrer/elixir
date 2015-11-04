# Programming Elixir (book)
# Modules and Functions exercises

defmodule ModulesAndFunctions do
  def double(n), do: n * 2
  # Exercise: ModulesAndFunctions-1
  def triple(n), do: n * 3
  # Exercise: ModulesAndFunctions-3
  def quadruple(n), do: double(n) * 2
  # Exercise: ModulesAndFunctions-4
  def sum(0), do: 0
  def sum(n) when n > 0 do
    n + sum(n - 1)
  end
  # Exercise: ModulesAndFunctions-5
  def gdc(x, 0), do: x
  def gdc(x, y), do: gdc(y, rem(x, y))
end
