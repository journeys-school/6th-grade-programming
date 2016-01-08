defmodule Intro.LogicTest do
  use ExUnit.Case
  alias Intro.PatternMatching

  test "match tuple" do
    assert {:ok, 13} = PatternMatching.ok_for(13)
  end

  test "match list" do
    assert [1, 2, 3] = PatternMatching.split_string("1,2,3")
  end

  # fib(0) = 1
  # fib(1) = 1
  # fib(n) = fib(n-2) + fib(n-1)
  test "fibonacci" do
    assert 89 = PatternMatching.fib(10)
  end
end
