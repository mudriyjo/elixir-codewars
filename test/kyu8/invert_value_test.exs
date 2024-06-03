defmodule InvertValueTest do
  use ExUnit.Case
  alias Kyu8.InvertValues

  defp testing(numtest, list, ans) do
    IO.puts("Test #{numtest}")
    assert InvertValues.invert(list) == ans
  end

  test "Basic Tests" do
    testing(1, [1, 2, 3, 4, 5], [-1, -2, -3, -4, -5])
    testing(2, [1, -2, 3, -4, 5], [-1, 2, -3, 4, -5])
    testing(3, [], [])
  end
end
