defmodule MultiKuma do
  defstruct auto_id: 1, entries: %{}

  @moduledoc """
  Documentation for Kuma.
  """

  @doc """
    Init a new Kuma list
  """
  def new do
    %MultiKuma{}
  end

  @doc """
    Add a new kuma to list
  """
  def add(%MultiKuma{auto_id: auto_id, entries: entries} = list, entry) do # This mean two parameters - first parameter is using pattern matching.
    entry = Map.put(entry, :id, auto_id)
    new_entries = Map.put(entries, auto_id, entry)

    %MultiKuma{list | entries: new_entries, auto_id: auto_id + 1}
  end

  @doc """
    Get a kuma based on key
  """
    def entries(%MultiKuma{entries: entries}, date) do
    entries |> Enum.filter(fn({_k, v})-> v.date == date end) |> Enum.map(fn({_k, v})-> v end)
  end
end
