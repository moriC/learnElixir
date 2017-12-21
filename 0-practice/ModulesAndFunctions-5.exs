defmodule Gcd do
  def of(x, 0), do: x
  def of(x, y), do: Gcd.of(y,rem(x,y))
end
