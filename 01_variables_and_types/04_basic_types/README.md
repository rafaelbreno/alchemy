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
