## Variable
- Elixir variable can't be declared
    - Doesn't exist something like: `var test string` or `const created_at time`
    - The variable is created and it's type is defined when a value is assigned to it
```elixir
    // Will show a warning saying that
    // ↓ This variable is unused
    test = "aaaa" // warning: variable "test" is unused (if the variable is not meant to be used, prefix it with an underscore)
    test = 10
    IO.puts(test)
```
