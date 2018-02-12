# Enumの関数all?、each、filter、split、takeを実装する

defmodule Practice do

  # all?
  def all?(list), do: all?(list, fn x -> !!x end)
  def all?([], _fun), do: true
  def all?([head | tail ], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

  # each
  def each([], _fun), do: []
  def each([head | tail ], fun) do
    [fun.(head) | each(tail,fun)]
  end

  # filter
  def filter([], _fun), do: []
  def filter([ head | tail], fun) do
    if fun.(head) do
      [head] ++ filter(tail, fun)
    else
      [] ++ filter(tail, fun)
    end
  end

  # split
  def split(list, count),      do: _split(list, [], count)
  defp _split([], front, _),   do: [ Enum.reverse(front), [] ]
  defp _split(tail, front, 0), do: [ Enum.reverse(front), tail ]
  defp _split([ head | tail ], front, count)  do
   _split(tail, [head|front], count-1)
  end

  # take
  # listからn番目でsplitする
  def take(list, n), do: hd(split(list, n))

end


# all?
IO.inspect Practice.all?([])
IO.inspect Practice.all?([1])
IO.inspect Practice.all?([true, true])
IO.inspect Practice.all?([true, false])
IO.inspect Practice.all?([4, 5, 6], &(&1 > 3))

# each
IO.inspect Practice.each([1, 2, 3], &(&1))
IO.inspect Practice.each([1, 2, 3], &(&1 + 1))

# filter
require Integer
IO.inspect Practice.filter([1, 2, 3, 4, 5], &Integer.is_even/1)

# split
IO.inspect Practice.split([1,2,3,4,5,6], 3)

# take
IO.inspect Practice.take('abcdefghijklmnopqrstuvwxyz', 6)
