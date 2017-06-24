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
    MultiKuma.add(kuma_list, entry)
  end

  @doc """
    List of entries by date

    Example:

      iex > Kuma.entries(kuma_list, {2017,7,19})
      [%{date: {2017, 7, 19}, id: 2, title: "def"}]
  """
  def entries(kuma_list, date) do
    MultiKuma.entries(kuma_list, date)
  end

  @doc """
    Update an entry

    Example:

      iex > Kuma.update(kuma_list, 1, &Map.put(&1, :title, "New content"))
  """
  def update(kuma_list, id, updater_fn) do
    MultiKuma.update(kuma_list, id, updater_fn)
  end
end
