# flatten(list)関数を実装する
# iex> MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
#  [1,2,3,4,5,6]

defmodule Practice do
  def flatten(list) do
    _flatten(list, [])
  end

  defp _flatten([], result) do
    IO.inspect "=== debug p0 ==="
    IO.inspect result
    Enum.reverse(result)
    IO.inspect "================="
  end
  defp _flatten([head|tail], result) when is_list(head) do
    IO.inspect "=== debug p1 ==="
    IO.inspect "head p1"
    IO.inspect head
    IO.inspect "tail p1"
    IO.inspect tail
    IO.inspect "result p1"
    IO.inspect result
    IO.inspect "================="
    _flatten(head ++ tail, result)
  end
  defp _flatten([head|tail], result) do
    IO.inspect "=== debug p2 ==="
    IO.inspect "head p2"
    IO.inspect head
    IO.inspect "tail p2"
    IO.inspect tail
    IO.inspect "resul p3"
    IO.inspect result
    IO.inspect "================="
    _flatten(tail, [head|result])
  end
end

# IO.inspect Practice.flatten([])
# IO.inspect Practice.flatten([1])
# IO.inspect Practice.flatten([1,2])
IO.inspect Practice.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
