defmodule Ping do
  def start do
    await(0)
  end

  def await(n) do
    receive do
      {:pong, pid} -> send(pid, {:ping, self})
    end

    IO.puts "Ping #{n}"
    await(n + 1)
  end
end