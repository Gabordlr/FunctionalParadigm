defmodule Tester do
  def concatenate_strings(a, b, c) do
    result = a <> " hello " <> " ajajaj " <> b <> " " <> c
    IO.puts(result)
  end
end

Tester.concatenate_strings("Hello", "World", "!")
