defmodule MyList do
  def len([]),          do: 0
  def len([_head|tail]), do: 1 + len(tail)
  
  def square([]),          do: []
  def square([head|tail]), do: [ head * head | square(tail)]
end

IO.puts MyList.square []
IO.puts MyList.square [4,5,6]
