defmodule Intro.Arithmetic do

  @doc ~S"""
  Add two numbers

  ## Examples:

      iex> Intro.Arithmetic.add2(1, 1)
      2

      iex> Intro.Arithmetic.add2(11, 11)
      22
re
  """
  def add2(a, b) do
    a+b
  end

  @doc ~S"""
  Subract two numbers

  ## Examples:

      iex> Intro.Arithmetic.subtract2(1, 1)
      0

      iex> Intro.Arithmetic.subtract2(5, 3)
      2

      iex> Intro.Arithmetic.subtract2(3, 4)
      -1
  """
  def subtract2(a, b) do
    a-b
  end

  @doc ~S"""
  Multiply two numbers

  ## Examples:

      iex> Intro.Arithmetic.multiply2(1, 1)
      1

      iex> Intro.Arithmetic.multiply2(2, 2)
      4

      iex> Intro.Arithmetic.multiply2(3, 4)
      12
  """
  def multiply2(a, b) do
    a*b
  end

  @doc ~S"""
  Divide two numbers

  ## Examples:

      iex> Intro.Arithmetic.divide2(1, 1)
      1.0

      iex> Intro.Arithmetic.divide2(2, 1)
      2.0

      iex> Intro.Arithmetic.divide2(4, 2)
      2.0

      iex> Intro.Arithmetic.divide2(2, 4)
      0.5
  """
  def divide2(a, b) do
    a/b
  end

  @doc ~S"""
  Integer divide two numbers. Truncates to whole number. 

  ## Examples:

      iex> Intro.Arithmetic.integer_divide2(1, 1)
      1

      iex> Intro.Arithmetic.integer_divide2(2, 1)
      2

      iex> Intro.Arithmetic.integer_divide2(4, 2)
      2

      iex> Intro.Arithmetic.integer_divide2(2, 4)
      0

      iex> Intro.Arithmetic.integer_divide2(7, 3)
      2

      iex> Intro.Arithmetic.integer_divide2(9, 10)
      0
  """
  def integer_divide2(a, b) do
    div(a, b)
  end

  @doc ~S"""
  Round any number to the nearest Integer

  ## Examples:

      iex> Intro.Arithmetic.round_to_integer(0.12345)
      0

      iex> Intro.Arithmetic.round_to_integer(0.789)
      1

      iex> Intro.Arithmetic.round_to_integer(1.3)
      1

      iex> Intro.Arithmetic.round_to_integer(1.8)
      2
  """
  def round_to_integer(number) do
    round(number)
  end

  @doc ~S"""
  Round any number to the nearest Integer

  ## Examples:

      iex> Intro.Arithmetic.round_to_float(0.789, 2)
      0.79
  """
  def round_to_float(number, decimals) do
    Float.round(number, decimals)
  end
end
