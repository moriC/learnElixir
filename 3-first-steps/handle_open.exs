handle_open = fn
    {:ok, file}  -> "First line: #{IO.read(file, :line)}"
    {_,   error} -> "Error: #{:file.format_error(error)}"
end

# 存在するファイル
IO.puts handle_open.(File.open("../1-intro/hello.exs"))

# 存在しないファイル
IO.puts handle_open.(File.open("../1-intro/Rakefile"))
