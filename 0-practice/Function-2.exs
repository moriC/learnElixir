# 引数を３つ取る関数を作成する
# 最初の２つの引数が共に「０」の場合は"FizzBuzz"を返す
# 最初の１つの引数が「０」の場合は"Fizz"を返す
# ２つ目の引数が「０」の場合は"Buss"を返す
# それ以外は３番目の引数を返す

fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, i -> i
end

IO.puts fb.(0,0,0)
IO.puts fb.(0,1,0)
IO.puts fb.(1,0,0)
IO.puts fb.(1,1,2)
