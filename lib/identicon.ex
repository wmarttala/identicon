defmodule Identicon do
  alias Identicon.Image

  def main(input) do
    input
    |> hash_input
  end

  defp hash_input(input) do
    hex =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Image{hex: hex}
  end
end
