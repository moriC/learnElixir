# span関数と内包表記を用いて2からnまでの素数を求める関数を作成する

defmodule MyList do

  # fromがtoよりも大きい時は課題の対象外なので空リストを返す
  def span(from, to) when from > to, do: []

  # fromよりもtoが大きい場合の処理
  def span(from, to),                do: [ from | span(from+1, to) ]

  # 素数を求める関数
  def primes(n) when n > 1 do
    for x <- span(2,n), is_prime?(x), do: x
  end

  # 2以上の場合に素数かどうか調べる
  defp is_prime?(n) when n >= 2 do
    num = span(2,div(n,2))
    factors = for x <- num, rem(n,x) == 0,do: x
    case factors do
      [] -> true
      [_] -> false
    end
  end
end

IO.inspect MyList.primes(2)
IO.inspect MyList.primes(3)
IO.inspect MyList.primes(4)
IO.inspect MyList.primes(5)
