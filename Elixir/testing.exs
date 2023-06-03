defmodule Actividad1 do
  def encode(lst),
    # helper function stores the current element and the count, aside from the tail
    do: do_encode(lst, {}, 0, [])

  # base case: empty list
  defp do_encode([], el, i, temp) when i > 0,
    # add the last element to the list
    do: Enum.reverse([{i, el} | temp])

  defp do_encode([], _el, 0, temp),
    do: Enum.reverse(temp)

  # case: head is the same as the element, so we increment the count and send the tail as new list
  defp do_encode([head | tail], el, i, temp) when head == el,
    # note: the element is still the same, so we pass it as is
    do: do_encode(tail, el, i + 1, temp)

  # case: head is != the element, so we store the tuple in temp and reset count (tail is new list)
  defp do_encode([head | tail], el, i, temp) when i > 0,
    # note: old element should not be passed through since we're starting a new count (new element)
    do: do_encode(tail, head, 1, [{i, el} | temp])

  # case: iterator is 0, so we set the element to the head and start counting
  defp do_encode([head | tail], _el, _i, temp),
    do: do_encode(tail, head, 1, temp)
end
