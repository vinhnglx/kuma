defmodule Kuma do
  @doc "Init the Kuma-Dict"
  def new, do: MultiKuma.new

  @doc """
    Add a new entry to Kuma-Dict

    Example:

      iex > Kuma.new |> Kuma.add_entry(%{date: {2017,7,19}, title: "abc"})
      %{{2017,7,19} => "abc"}
  """
  def add_entry(kuma_list, entry) do
    MultiKuma.add(kuma_list, entry.date, entry.title)
  end

  @doc """
    List of entries by date

    Example:

      iex > Kuma.entries(kuma_list, {2017,7,19})
      "abc"
  """
  def entries(kuma_list, date) do
    MultiKuma.get(kuma_list, date)
  end
end
