# Thats not how a elixir code looks like in the real world, its just a script to test a process

parse_time = fn {time, :ok} ->
  (time / 1_000_000)
  |> Float.round(2)
  |> Float.to_string()
end

show_seconds = fn time ->
  IO.puts("Tempo de execução: #{time}s")
end

parse_memory = fn _ ->
  (:erlang.memory(:code) / 1_048_576)
  |> Float.round(2)
end

show_memory = fn memory ->
  IO.puts("Memória alocada: #{memory} Mb")
end

:timer.tc(fn ->
  File.stream!("/app/gen_report_13MB.csv")
  |> Enum.each(fn _ -> nil end)

  :ok
end)
|> parse_time.()
|> show_seconds.()
|> parse_memory.()
|> show_memory.()
