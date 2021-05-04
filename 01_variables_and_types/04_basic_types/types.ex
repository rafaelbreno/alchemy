# Atom
IO.puts("------------ Atom ------------")

atom_apple = :apple
atom_orange = :orange
atom_true = :true
atom_false = :false
atom_nil = :nil

IO.puts("is_atom(atom_apple) => #{is_atom(atom_apple)}")
IO.puts("atom_apple == atom_orange =>  #{atom_apple == atom_orange}")
IO.puts("is_atom(true) => #{is_atom(true)}")
IO.puts("atom_true == true => #{atom_true == true}")
IO.puts("\n")

# Booleans
IO.puts("------------ Boolean ------------")

IO.puts("Is `true` an atom? #{is_atom(true)}")
IO.puts("Is `false` an atom? #{is_atom(false)}")
IO.puts("\n")

# String
IO.puts("------------ String ------------")
hello = "Hello Alchemist!"

# Will output Hello Alchemist!
IO.puts("#{hello}")

# String lenght
IO.puts("Lenght: #{byte_size(hello)}")

# Is binary?
IO.puts("Is binary?: #{is_binary(hello)}")

# Integer
IO.puts("------------ Integer ------------")

# Opting-in to use Integer
require Integer

ten = 10
IO.puts("Value: #{ten}")
IO.puts("Is even? #{Integer.is_even(ten)}")
IO.puts("Is odd? #{Integer.is_odd(ten)}")

# Float
IO.puts("------------ Float ------------")
# Opting-in to use Float
require Float

pi = 3.1415
IO.puts("Value: #{pi}")
IO.puts("Ceil func: #{Float.ceil(pi, 0)}")
IO.puts("Floor func: #{Float.floor(pi, 0)}")


# List
IO.puts("------------ List ------------")
## Defining a list
list1 = [1, 2, 3, 4]
## Using inspect
IO.puts("List 1: #{inspect(list1)}")

# It have head and tail
## Head is the first element
## Tail is the rest
[head_list1 | tail_list1] = list1
IO.puts("Head 1: #{head_list1}")
IO.puts("Tail 1: #{inspect(tail_list1)}")

# Operators
## ++ - Concat
list2 = [1, 2] ++ [3, 4]
IO.puts("[1, 2] ++ [3, 4] = #{inspect(list2)}")

list3 = [1, 2] -- [2, 3]
IO.puts("[1, 2] -- [2, 3] = #{inspect(list3)}")

# Tuple
IO.puts("------------ Tuple ------------")
tuple = {1, "two", :three}
IO.puts("tuple = #{inspect(tuple)}")
IO.puts("Tuple size: #{tuple_size(tuple)}")


# Map
IO.puts("------------ Map ------------")
# Opting-in to use Map
require Map
map = %{:a => 1, :b => "tres", "key" => :value}

IO.puts("map = #{inspect(map)}")
IO.puts("map[:a] #{map[:a]}")
IO.puts("Map.get(map, :b) #{Map.get(map, :b)}")
fetched = Map.fetch(map, "key")
IO.puts("Map.fetch(map, \"key\") #{inspect(fetched)}")
