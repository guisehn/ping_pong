defmodule PingPong do
  def start do
    ping = spawn_link(Ping, :start, [])
    pong = spawn_link(Pong, :start, [])
    send(ping, {:pong, pong})
  end
end
