# Programming Elixir (book)
# Lists and Recursion exercises

defmodule MyList do
  def sum([], total), do: total
  def sum([ head | tail ], total), do: sum(tail, head+total)
end

# Exercise: ListsAndRecursion-0
defmodule MyNewList do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)
end

MyList.sum([1, 2, 3 ,4], 0) # 10
MyNewList.sum([1, 2, 3 ,4]) # 10
