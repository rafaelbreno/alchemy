# Basic Arithmetic

# Sum +
IO.puts("Sum\n")
sum_int = 1 + 2
IO.puts(sum_int)

sum_float = 1.4 + 1.7
IO.puts(sum_float)

IO.puts("\n-----------\n")

# Subtraction 
IO.puts("Subtraction\n")
sub_int = 1 - 7
IO.puts(sub_int)
sub_float = 1.4 - 7.9
IO.puts(sub_float)

IO.puts("\n-----------\n")
# Multiplication
IO.puts("Multiplication\n")
mult_int = 1 * -8
IO.puts(mult_int)
mult_float = 1.7 * 2.9
IO.puts(mult_float)

IO.puts("\n-----------\n")

# Division
IO.puts("Division\n")
## In this case, `/` will always return a float, to return Int you need to use div(val1, val2)
div_float = 81 / 9
IO.puts(div_float)
div_int = div(81, 9)
IO.puts(div_int)

# Tip!
# div(81, 9) is the same as div 81, 9
# Elixir allows you to drop the parentheses when invoking named functions
IO.puts("\n-----------\n")

# Remainder
# In other languages you know it by the symbol '%'
IO.puts("Remainder\n")
IO.puts(rem 5, 2)
