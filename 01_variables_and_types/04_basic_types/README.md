## Basic Types 
- [Hex Doc](https://hexdocs.pm/elixir/Kernel.html#module-built-in-types)
- [Elixir Doc](https://elixir-lang.org/getting-started/basic-types.html)

### Atom
- [Hex Doc](https://hexdocs.pm/elixir/Atom.html)
- _"Atoms are constants whose values are their own name."_
- An atom is prefixed by __:__ 
- So you can declare one as:
```elixir
atom_foo = :foo

# Will output true
IO.puts(is_atom(atom_foo))
```

### Boolean
- [Elixir Doc](https://elixir-lang.org/getting-started/basic-types.html#booleans)
- As mentioned before the values `true` and `false` are built-in atoms
```elixir
is_atom(true)
is_atom(false)
# Both will return true
```

### String
- [Elixir Doc](https://elixir-lang.org/getting-started/basic-types.html#strings)
- A string is determined by double-quotes `"`
- Internally a string is determined by a sequence(vector/array) of `bytes`
```
hello = "Hello Alchemist!"
IO.puts("#{hello}")
# Will output Hello Alchemist!

# String lenght
IO.puts()

```

### Integer
- [Hex Doc](https://hexdocs.pm/elixir/Integer.html)
- A number without decimal places
- [`Integer` functions](https://hexdocs.pm/elixir/Integer.html#functions)
```
ten = 10
```

### Float
- [Hex Doc](https://hexdocs.pm/elixir/Float.html)
- A number with decimal places determined by `.`
- [`Float` functions](https://hexdocs.pm/elixir/Float.html#functions)
```
pi = 3.1415
```
