defmodule Sandbox do
  @moduledoc """
  Documentation for Sandbox.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sandbox.hello()
      :world

  """
  def hello do
    :world
  end
  
  def name do
    name = IO.gets "Wat is je naam?" |> String.upcase
    IO.puts "Hallo #{name}"
  end
end
