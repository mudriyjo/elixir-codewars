defmodule ElixirCodewarsTest do
  use ExUnit.Case
  doctest ElixirCodewars

  test "greets the world" do
    assert ElixirCodewars.hello() == :world
  end
end
