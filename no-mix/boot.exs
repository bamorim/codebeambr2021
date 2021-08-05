decimal_ebin = "_build/decimal/ebin"
decimal_lib = "deps/decimal/lib"
ebin = "_build/calc/ebin"
config = "config/config.exs"

# Compile deps
IO.puts("Building decimal")
System.cmd("elixirc", ["-o", decimal_ebin, "-r", config, decimal_lib])

# Compile calc
IO.puts("Building calc")
System.cmd("elixirc", ["-o", ebin, "-pa", decimal_ebin, "-r", config, "lib"])

# Compile calc.app
app_spec =
  {:application, :calc,
   [
     applications: [:kernel, :stdlib, :elixir, :logger],
     description: 'calc',
     modules: [Calc, Calc.Agent, Calc.App],
     registered: [],
     vsn: '0.1.0',
     mod: {Calc.App, []}
   ]}

File.write!("_build/calc/ebin/calc.app", :io_lib.format("~tp.~n", [app_spec]))

# Setup code server and load config
Code.prepend_path(decimal_ebin)
Code.prepend_path(ebin)
Code.require_file(config)
:application.ensure_all_started(:calc)
