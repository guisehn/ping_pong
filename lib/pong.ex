defmodule Pong do
  def start do
    await(0)
  end

  def await(n) do
    receive do
      {:ping, pid} -> send(pid, {:pong, self})
    end

    IO.puts "Pong #{n}"
    await(n + 1)
  end
end