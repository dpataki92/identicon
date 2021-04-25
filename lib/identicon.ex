defmodule Identicon do
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    :crypto.hash(:md5, input) # creates hash from string using md5 algorithm
    |> :binary.bin_to_list # produces a list of numbers from hash
  end

end
