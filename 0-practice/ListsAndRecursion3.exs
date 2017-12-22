defmodule MyList do

  # 空のリストの場合は何もしない
  def caesar([], _n), do: []

   # 先頭の文字にn足してz以下の場合は足して次の文字の処理
  def caesar([ head | tail ], n) when head + n <= ?z, do: [ head+n | caesar(tail, n) ]

  # 先頭の文字にn足してzをすぎる場合には-26(アルファベット先頭に戻す)して次の文字の処理
  def caesar([ head | tail ], n),                     do: [ head+n-26 | caesar(tail, n) ]

end


IO.puts MyList.caesar('', 13)
IO.puts MyList.caesar('ryvkve', 13)
IO.puts MyList.caesar('abc', 1)
