# Cards

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cards>.

### Creating a project
`elixir` - overview
`mix new <project name>`

### Running a code
`iex -S mix`
- to recompile in iex environment
`recompile`

### Dependencies
- go to a `mix.exs` file
- inside deps function add dependency

```elixir
defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.12"}
    ]
  end
```
- first element in a tuple is a name of the dep
- second is the number of the version of the dep

### Documentation
- dependency `:ex_doc` 
- `mix docs` for creating a documentation

### Testing
- in a test folder that is created automatically
- `mix test` run tests
- no need to install additional libraries
- doctesting the examples

### Maps
- just like objects in JS

```elixir
colors = %{primary: "red", secondary: "blue"}
colors.primary
iex> "red"
colors.secondary
iex> "blue
```

- property matching
```elixir
%{secondary: secondary_color} = colors
secondary_color
iex> "blue"
```

- updating a property (not adding a new preoperty)
```elixir
# 1st way
colors = Map.put(colors, :primary, "orange")
# 2nd way
colors = %{colors | primary: "orange"}
```

- adding a new property
```elixir
colors = Map.put_new(colors, :tercery, "orange")
```

### Keyword list
- using atoms `:atom`
```elixir
colors = [{:primary, "red"}, {:secondary, "green"}]
colors = [primary:, "red", secondary: "green"] # the same as above
colors[:primary]
iex> "red"
```
- if passing to the function as a last argument, the square braces can be omitted
