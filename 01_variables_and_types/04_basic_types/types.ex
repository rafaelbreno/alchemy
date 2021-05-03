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

is_atom(true)
is_atom(false)
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

ten = 10
IO.puts("Value: #{ten}")
IO.puts("Is even? #{Integer.is_even(ten)}")
IO.puts("Is odd? #{Integer.is_odd(ten)}")

# Float
IO.puts("------------ Float ------------")
pi = 3.1415
IO.puts("Value: #{pi}")
IO.puts("Ceil func: #{Float.ceil(pi, 0)}")
IO.puts("Floor func: #{Float.floor(pi, 0)}")
