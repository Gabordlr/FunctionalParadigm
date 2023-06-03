# file name: CesarCipher.exs

defmodule CesarCipher do
  def char_shift(char, offset) do
    cond do
      65 <= char and 90 >= char -> Integer.mod(char - 65 + offset, 26) + 65
      97 <= char and 122 >= char -> Integer.mod(char - 97 + offset, 26) + 97
      true -> char
    end
  end

  def line_shift(line, offset) do
    # to_string(Enum.map(to_charlist(line), &char_shift(&1, offset)))

    line |> to_charlist() |> Enum.map(&char_shift(&1, offset)) |> to_string()
  end

  def cesarCipher(in_filename, out_filename, offset) do
    data =
      in_filename
      |> File.stream!()
      |> Enum.map(&line_shift(&1, offset))
      |> Enum.join("")

    File.write(out_filename, data)
  end
end
