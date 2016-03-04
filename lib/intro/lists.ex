defmodule Intro.Lists do

  def squares_for(l) do
    Enum.map(l, fn(x) -> x*x end)
  end

end
