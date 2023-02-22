defmodule GuessingGame do
  def compare(secret_number, guess \\ nil)
  def compare(secret_number, guess) when secret_number === guess do
    # Please implement the compare/2 function
    "Correct"
  end

  def compare(secret_number, guess) when guess === nil do
    "Make a guess"
  end

  def compare(secret_number, guess) when is_atom(guess) do
    "Make a guess"
  end

  def compare(secret_number, _guess) when _guess === secret_number+1 or _guess === secret_number-1 do
  "So close"
  end

  def compare(secret_number, _guess) when secret_number < _guess do
    "Too high"
  end

  def compare(secret_number, _guess) when secret_number > _guess do
    "Too low"
  end

end
