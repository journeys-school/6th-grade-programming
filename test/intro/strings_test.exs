defmodule Intro.StringsTest do
  use ExUnit.Case
  alias Intro.Strings

  test "Concatenate strings" do
    assert "foobar" == Strings.concat("foo", "bar")
  end

  test "String injection" do
    assert "The injected string is: foo!" == Strings.inject("foo")
  end

  test "Uppercase strings" do
    assert "HELLO" == Strings.upcase("hello")
  end

  test "Downcase strings" do
    assert "hello" == Strings.downcase("HEllo")
  end

  test "Strip strings" do
    assert "hello" == Strings.strip("  hello  ")
  end

  test "Reverse string" do
    assert "olleh" == Strings.reverse("hello")
  end

  test "String length" do
    assert 3 == Strings.length("kai")
  end

  test "Splitting a String" do
    assert ["foo", "bar", "baz", "hey"] == Strings.split ("foo,bar,baz,hey")
  end


  test "Contain" do
    s = "Programming class is right now"
    assert true == Strings.contains?(s, ["now", "later"])
    assert false == Strings.contains?(s, "later")
  end

  ## Add tests for 3 more string functions
end
