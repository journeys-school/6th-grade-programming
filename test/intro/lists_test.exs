defmodule Intro.ListsTest do
  use ExUnit.Case

  test "maps a list of numbers into their squares" do
    assert [1, 4, 9] == Intro.Lists.squares_for([1, 2, 3])
    assert [16, 36, 144] == Intro.Lists.squares_for([4, 6, 12])
  end


end
