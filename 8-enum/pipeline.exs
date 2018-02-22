[1,2,3,4,5]
|> IO.inspect

[1,2,3,4,5]
|> Enum.map(&(&1*&1))
|> IO.inspect

[1,2,3,4,5]
|> Enum.map(&(&1*&1))
|> Enum.with_index
|> IO.inspect

[1,2,3,4,5]
|> Enum.map(&(&1*&1))
|> Enum.with_index
|> Enum.map(fn {value,index} -> value - index end)
|> IO.inspect
