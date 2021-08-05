decimal_ebin = "_build/decimal/ebin"
decimal_lib = "deps/decimal/lib"
ebin = "_build/calc/ebin"
config = "config/config.exs"

IO.puts("Building decimal")
System.cmd("elixirc", ["-o", decimal_ebin, "-r", config, decimal_lib])

IO.puts("Building calc")
System.cmd("elixirc", ["-o", ebin, "-pa", decimal_ebin, "-r", config, "lib"])

Code.prepend_path(decimal_ebin)
Code.prepend_path(ebin)
Code.require_file(config)
