defmodule Intro.Strings do

  def concat(a, b) do
    a <> b
  end

  def inject(a) do
    "The injected string is: #{a}!"
  end

  def upcase(a) do
    String.upcase(a)
  end

  def downcase(a) do
    String.downcase(a)
  end

  def strip(a) do
    String.strip(a)
  end

  def reverse(a) do
    String.reverse(a)
  end

  def length(a) do
    String.length(a)
  end

  def split(a) do
    String.split(a,",")
  end

  def contains?(string, contents) do
    String.contains?(string, contents)
  end

end
