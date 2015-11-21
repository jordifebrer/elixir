## Mix commands

### creates a new project
```sh
$ mix new issues
```

### runs tests
```sh
$ mix test
```

### run a specific function
```sh
$ mix run -e 'Issues.CLI.run(["-h"])'
```

### lists dependencies and status
```sh
$ mix deps
```

### downloads dependencies
```sh
$ mix deps.get
```

### runs the app on iex
```sh
$ iex -S mix
iex(1)> Issues.GithubIssues.fetch("elixir-lang", "elixir")
```

### packages the app
```sh
$ mix escript.build
```

### runs the app from command line
```sh
$ ./issues elixir-lang elixir 3
```
