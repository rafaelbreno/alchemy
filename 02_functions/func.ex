# Anonymous Functions
anon_sum = fn(n1, n2) -> n1 + n2 end
IO.puts(anon_sum.(1, 2))

## Anonymous Function Shorthand
anon_sum = &(&1 + &2)
IO.puts(anon_sum.(1, 2))

# Pattern Matching

pm = fn
  {:ok, result} -> IO.puts "Handling result..."
  {:ok, _} -> IO.puts "Will never reach because of the case above"
  {:error} -> IO.puts "An error occurred"
end

some_result = :foo

pm.({:ok, some_result})
pm.({:error})

# Named Functions

defmodule SomeModule do
  def sayHello(name) do
    "Hello, " <> name
  end
  def shotSayHello(name), do: "Hello, " <> name
end

IO.puts(SomeModule.sayHello("Rafiusky"))
IO.puts(SomeModule.shotSayHello("00bex"))

# Recursion Functions

defmodule RecursionModule do
  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)
end

list = [1, 2, 3, 4]

IO.puts(RecursionModule.len(list))

# Arity

defmodule ArityMod do
  def sum([]), do: 0 # sum/2
  def sum([head | tail]), do: head + sum(tail) # sum/3
  def sum(a), do: a + 1 # sum/0
  def sum(a, b), do: a + b # sum/1
end

IO.puts(ArityMod.sum(4))
IO.puts(ArityMod.sum(4, 3))
IO.puts(ArityMod.sum(list))

# Pattern Matching

defmodule PMMod do
  def sum(%{n: []}), do: 0
  def sum(%{n: [head | tail]}), do: head + sum(%{n: tail})
  def sum(a), do: a + 1 
  def sum(a, b), do: a + b 
end

list_map = %{
  n: list,
  random_field: "random value",
}

IO.puts(PMMod.sum(4))
IO.puts(PMMod.sum(4, 3))
IO.puts(PMMod.sum(list_map))

# Private Functions

defmodule SomeModule2 do
  def publicFunction(name), do: IO.puts(name <> privateFunction())
  defp privateFunction, do: " some value"
end

SomeModule2.publicFunction("Foo")

# Guards

defmodule GuardModule do
  def hello(words, token) when is_list(words) and is_binary(token) do
    words
    |> Enum.join(token)
    |> hello
  end

  def hello(person) when is_binary(person) do
    "Hello, " <> person
  end
end

IO.puts(GuardModule.hello(["Foo", "Bar", "Zoo"], ", "))
IO.puts(GuardModule.hello("Foo"))

# Default Value

defmodule DefaultValue do
  def hello(names, connector \\ ", ")

  def hello(names, connector) when is_list(names) do
    names
    |> Enum.join(connector)
    |> hello
  end

  def hello(name, connector) when is_binary(name) do
    "Hello" <> connector <> name
  end
end

IO.puts(DefaultValue.hello(["Foo", "Bar", "Zoo"], "-"))
IO.puts(DefaultValue.hello(["Foo", "Bar", "Zoo"]))
