defmodule MyList do

  def mapsum(list, func), do: _mapsum(list, 0, func)

  def _mapsum([], total, _), do: total

  def _mapsum([head | tail], total, func) do
      _mapsum(tail, func.(head) + total, func)
  end
end

IO.puts MyList.mapsum [1,2,3], &(&1 * &1)
