defmodule Intro.LogicTest do
  use ExUnit.Case
  alias Intro.PatternMatching

  test "match tuple" do
    assert {:ok, 13} = PatternMatching.ok_for(13)
  end

  test "match list" do
    assert ["1", "2", "3"] = PatternMatching.split_string("1,2,3")
  end

  test "match parameters" do
    assert :ok = PatternMatching.test(:ok)
    assert :error = PatternMatching.test(:error)
    assert :no_match = PatternMatching.test(123)
    assert :no_match = PatternMatching.test("anything else")
  end

  # fib(0) = 1
  # fib(1) = 1
  # fib(n) = fib(n-2) + fib(n-1)
  test "fibonacci" do
    assert 0 = PatternMatching.fib(0)
    assert 1 = PatternMatching.fib(1)
    assert 55 = PatternMatching.fib(10)
  end
end
