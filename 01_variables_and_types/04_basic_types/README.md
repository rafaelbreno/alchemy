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

### List
- [Elixir Doc](https://elixir-lang.org/getting-started/basic-types.html#linked-lists)
- [Hex Doc](https://hexdocs.pm/elixir/List.html)
- Lists stores some amount of values, `>= 0` this means that it can store, none, one or more values
    - Each value can be different type
```elixir
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
```
### Tuple
- [Elixir Doc](https://elixir-lang.org/getting-started/basic-types.html#tuples)
- Contiguously stored data structure, so the values can be accessed/retrieved by its position
    - Values can be of any type
```elixir

```

### Map
- [Hex Doc](https://hexdocs.pm/elixir/Map.html)
- `Key:Value` data structure
- The items can be retrieved via:
    - `Map.fetch()` -> {:ok, :value} or :error
    - `Map.get()` -> value or nil
    - `map[key]` provided by [`Access`](https://hexdocs.pm/elixir/Access.html)
```elixir
# Opting-in to use Map
require Map
map = %{:a => 1, :b => "tres", "key" => :value}

IO.puts("map = #{inspect(map)}")
IO.puts("map[:a] #{map[:a]}")
IO.puts("Map.get(map, :b) #{Map.get(map, :b)}")
fetched = Map.fetch(map, "key")
IO.puts("Map.fetch(map, \"key\") #{inspect(fetched)}")
```

