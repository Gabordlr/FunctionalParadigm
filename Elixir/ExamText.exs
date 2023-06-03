defmodule ExamTest do
  def funCall(list), do: numFinder(list, [])

  defp numFinder(list1, list2) when list1 == [], do: Enum.reverse(list2)

  defp numFinder([head | tail], list2) when rem(head, 10) == 4,
    do: numFinder(tail, [head | list2])

  defp numFinder([_head | tail], list2), do: numFinder(tail, list2)

  def indexMult(lst), do: indexHelper(lst, [], 1)

  defp indexHelper(lst, lst2, _num) when lst == [], do: Enum.reverse(lst2)
  defp indexHelper([head | tail], lst2, num), do: indexHelper(tail, [head * num | lst2], num + 1)

  def revCaller(list), do: revOrder(list)

  defp revOrder(lst) when lst == [], do: lst
  defp revOrder([head | tail]), do: revOrder(tail) ++ [head]
end
