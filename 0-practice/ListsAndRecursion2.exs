defmodule MyList do

  # 空のリストの場合はリストじゃない表示
  def max([]), do: "No list"

  # 要素が一つの時は、それが最大値
  def max([head | []]), do: "Max value is #{head}"

  # 要素が二つ以上の時は比較して最大値を求める
  # 一つ目と二つの要素を比較し二つ目が大きい時は二つ目を引数に与え判定を続行する
  def max([a,  b | tail]) when a < b,   do: max([b | tail])
  # 一つ目の方が大きい場合には、一つ目を引数に与え判定を続行する
  def max([a, _b | tail]),              do: max([a | tail])


end

IO.puts MyList.max []
IO.puts MyList.max [1]
IO.puts MyList.max [1,2]
IO.puts MyList.max [1,2,3]
IO.puts MyList.max [1,3,2]
