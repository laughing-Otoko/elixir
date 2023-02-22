defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = fn a,b -> :math.sqrt(a**2 + b**2) end
    cond do
      distance.(x,y) >= 0 and distance.(x,y) <= 1 -> 10
      distance.(x,y) > 1 and distance.(x,y) <= 5 -> 5
      distance.(x,y) > 5 and distance.(x,y) <= 10 -> 1
      distance.(x,y) > 10 -> 0
      true -> false
    end
  end
end
