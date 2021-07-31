defmodule Calc do
  @initial_value Application.compile_env(:calc, :initial_value, 0)

  @moduledoc """
  Calc holds a decimal number in memory

  - `get/0` returns the current value
  - `add/1` adds to that value
  - `reset/0` resets to the initial value

  The initial value is #{@initial_value}
  """

  require Logger

  @doc """
  Gets the current counter
  """
  def get do
    Logger.debug("Called get")
    Agent.get(Calc.Agent, & &1)
  end

  @doc """
  Adds to the number in memory
  """
  def add(number) do
    Agent.update(Calc.Agent, fn sum ->
      Logger.debug("Adding number #{number} to #{to_string(sum)}")
      number
      |> Decimal.new()
      |> Decimal.add(sum)
    end)
  end

  @doc """
  Resets the counter
  """
  def reset do
    Logger.debug("Reseting to #{initial_value()}")
    Agent.update(Calc.Agent, fn _ -> initial_value() end)
  end

  @doc """
  The initial value in decimal
  """
  def initial_value do
    Decimal.new(@initial_value)
  end
end
