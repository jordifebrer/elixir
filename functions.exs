# Programming Elixir (book)
# Functions exercises

# Exercise: Functions-1
list_concat = fn a, b -> a ++ b end
list_concat_short = &(&1 ++ &2)

sum = fn a, b, c -> a + b + c end
sum_short = &(&1 + &2 + &3)

pair_tuple_to_list = fn {a, b} -> [a] ++ [b] end

# Exercise: Functions-2
fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

IO.puts(fizz_buzz.(0, 0, 2))
IO.puts(fizz_buzz.(0, 1, 2))
IO.puts(fizz_buzz.(1, 0, 2))
IO.puts(fizz_buzz.(1, 2, 3))

# Exercise: Functions-3
foo = fn (n) ->
  fizz_buzz.(rem(n, 3), rem(n, 5), n)
end
foo_short = &(fizz_buzz.(rem(&1, 3), rem(&1, 5), &1))

IO.puts(foo.(10))
IO.puts(foo.(11))
IO.puts(foo.(12))
IO.puts(foo.(13))

prefix = fn name -> (fn surname -> "#{name} #{surname}" end) end
IO.puts(prefix.("Jordi").("Doe"))

# Exercise: Functions-4
Enum.map [1, 2, 3, 4], &(&1 + 2)
Enum.map [1, 2, 3, 4], &(IO.inspect &1)
