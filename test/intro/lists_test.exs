defmodule Intro.ListsTest do
  use ExUnit.Case

  test "maps a list of numbers into their squares" do
    assert [1, 4, 9] == Intro.Lists.squares_for([1, 2, 3])
    assert [16, 36, 144] == Intro.Lists.squares_for([4, 6, 12])
  end

  test "detect a value in a list" do
    assert 2 == Intro.Lists.detect_value([1,2,3], 2)
    assert false == Intro.Lists.detect_value([1,2,3], 5)
    assert 4 == Intro.Lists.detect_value([2,4,6], 4)
    assert "Matthew" == Intro.Lists.detect_value(["Kai", "Jeremy", "Matthew"], "Matthew")
  end
end
