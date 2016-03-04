defmodule Intro.PatternMatching do

  def ok_for(x) do
    {:ok, x}
  end

  def split_string(x) do
    String.split(x, ",")
  end

  def test(:ok) do
    :ok
  end

  def test(:error) do
    :error
  end

  def test(_) do
    :no_match
  end

def fib(0) do
  0
end

def fib(1) do
  1
end

def fib(n) do
  fib(n-2) + fib(n-1)
end

end
