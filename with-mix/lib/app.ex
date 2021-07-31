defmodule Calc.App do
  use Application

  def start(_type, _args) do
    children = [{Calc.Agent, Calc.initial_value()}]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
