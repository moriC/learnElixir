# １から１０００までの間の数字を一つ選択し、その数字を見つけるコードを書く

defmodule Chop do
  def guess(actual, low..high)
    when actual == div(low+high, 2) do
      IO.puts "Is it #{actual}?"
      IO.puts "Yes, it's #{actual}."
  end

  def guess(actual, low..high)
    when actual < div(low+high, 2) do
      IO.puts "Is it #{div(low+high, 2)}?"
      guess(actual, low..div(low+high, 2))
  end

  def guess(actual, low..high)
    when actual > div(low+high, 2) do
      IO.puts "Is it #{div(low+high, 2)}?"
      guess(actual, div(low+high, 2)..high)
  end
end
