defmodule MultiKuma do
  @moduledoc """
  Documentation for Kuma.
  """

  @doc """
    Init a new Kuma list
  """
  def new do
    Map.new
  end

  @doc """
    Add a new kuma to list

    Two different values on a same key will be save as list of elements
  """
  def add(list, key, value) do
    Map.update(list, key, value, fn(x) -> [x] ++ ["def"] end)
  end

  @doc """
    Get a kuma based on key
  """
  def get(list, key) do
    Map.get(list, key)
  end
end
