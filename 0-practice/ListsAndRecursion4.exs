# fromからtoまでの数のリストを返す関数を作成する

defmodule MyList do

  # fromがtoよりも大きい時は課題の対象外なので空リストを返す
  def span(from, to) when from > to, do: []

  # fromよりもtoが大きい場合の処理
  def span(from, to),                do: [ from | span(from+1, to) ]
end

IO.puts MyList.span(1,0)
IO.puts MyList.span(1,2)
IO.puts MyList.span(1,5)
