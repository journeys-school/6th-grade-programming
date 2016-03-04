defmodule Intro.LogicTest do
  use ExUnit.Case
  alias Intro.Logic

  test "relationship of two numbers is greater" do
    assert :greater == Logic.relationship(5, 2)
  end

  test "relationship of two numbers is less" do
    assert :less == Logic.relationship(2, 5)
  end

  test "relationship of two numbers is equal" do
    assert :equal == Logic.relationship(2, 2)
  end

  test "quick" do
    assert "Brrr!" == Logic.temp(28)
    assert "Mmmmm..." == Logic.temp(42)
  end
end
