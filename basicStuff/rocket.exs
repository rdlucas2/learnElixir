defmodule Rocket do
  def say_hello do
    Code.require_file("hello-world.exs")
  end

  def start_launch_sequence do
    seconds = 10

    IO.puts "T - #{seconds}..."
    countdown(seconds)
  end

  defp countdown(seconds) do
    for i <- seconds - 1 .. 1 do
      IO.puts "#{i}..."
    end
    blastoff()
  end

  defp blastoff do
    IO.puts "Liftoff!"
  end
end

Rocket.say_hello()
Rocket.start_launch_sequence()
