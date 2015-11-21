# Elixir basic control flow

# if/else
if true do
	"True!"
else
   "False!"
end

# unless
unless True do
	"False!"
else
	"True!"
end

# cond => simulates 'else if'
cond do
	1 == 2 -> 
    "False!"
  1 == 3 ->
  	"False!"
  true ->
  	"Else.. always true"
end

# case 
case [1, 2] do
  [3, 4] ->
    "False, different numbers"
  [2, x] ->
    "False, 2 != 1, x not assigned"
  [_, 3] ->
    "False, 3 != 2"
  _ ->
  	"True!"
end	
