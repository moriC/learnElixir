# 引数を３つ取る関数を作成する
# 最初の２つの引数が共に「０」の場合は"FizzBuzz"を返す
# 最初の１つの引数が「０」の場合は"Fizz"を返す
# ２つ目の引数が「０」の場合は"Buss"を返す
# それ以外は３番目の引数を返す

# rem(a,b)はaをbで割った余りを返す関数
# 引数として整数(n)を１つ受け取りfbに下記引数で与える
# 第一引数：rem(n,3)
# 第二引数：rem(n,5)
# 第三引数：n
# 引数を10,11,12・・・と続けて７回呼び出しを行う
# 結果は「Buzz,11,Fizz,13,14,FizzBuzz,16」となる

# これは使い回す
fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, i -> i
end

# 今回の指定された無名関数の作成
fizzbuzz = fn n -> fb.(rem(n, 3), rem(n, 5), n) end

# 10から16までの7つの数字で検証を行う
Enum.each 10..16, fn n -> IO.puts fizzbuzz.(n) end
