defmodule Intro.Lists do

  def squares_for(l) do
    Enum.map(l, fn(x) -> x*x end)
  end

  def detect_value(l,n) do
    Enum.find(l, false, fn(x) -> x==n end)
  end
end
