defmodule Kyu8.InvertValues do
  def invert(list) do
    Enum.map(list, &(&1 * -1))
  end
end
