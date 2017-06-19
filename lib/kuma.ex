defmodule Kuma do
  @moduledoc """
  Documentation for Kuma.
  """

  # Init the Kuma-Dict
  def new, do: Map.new

  # Add a new entry to Kuma-Dict
  def add_entry(kuma_list, date, title) do
    kuma_list |> Map.put(date, title)
  end

  # List of entries
  def entries(kuma_list, date) do
    kuma_list |> Map.get(date)
  end
end
