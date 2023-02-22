defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    volume_pair |> elem(1)
  end

  #def to_milliliter(volume_pair \\ {}) do
  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}
  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15} 
   
  # Please implement the from_milliliter/2 functions
  #def from_milliliter(volume_pair, unit) do
  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume}
  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / 240}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / 5} 
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / 15}
   
  

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    x = to_milliliter(volume_pair)
    y = from_milliliter(x, unit)
    y
  end
end
