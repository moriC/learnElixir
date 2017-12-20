# 文字列を１つ取るprefix関数を作成する
# この関数は２つの文字列を取る新しい関数を返す
# ２番目の関数が呼ばれた時には１番目の文字列、スペース、そして２番目の文字列を持った文字列を返す

prefix = fn str1 -> ( fn str2 -> "#{str1} #{str2}" end) end

 mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
