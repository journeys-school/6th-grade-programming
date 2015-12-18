defmodule Intro.Logic do

  def relationship(a, b) do
    cond do
      a>b -> :greater
      a<b -> :less
      a=b -> :equal
    end

  end

end
