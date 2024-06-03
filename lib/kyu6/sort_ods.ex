defmodule Kyu6.SortOds do

  def is_odd?(el) do
    if el == 0 do
      false
    else
      rem(el, 2) != 0
    end
  end
  def sort_the_odd(ls) do
    sorted_odds = ls
    |> Enum.filter(&is_odd?/1)
    |> Enum.sort

    Enum.reduce(ls, {[], sorted_odds}, fn el, acc ->
      res = elem(acc,0)
      sorted = elem(acc,1)
      if is_odd?(el) do
        {res ++ [acc |> elem(1) |> hd], tl(sorted)}
      else
        {res ++ [el], sorted}
      end
    end) |> elem(0)
  end
end
