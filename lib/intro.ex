defmodule Intro do
  use Plug.Router
  plug Plug.Parsers, parsers: [:urlencoded]
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, hello_html)
  end

  def hello_html do
    msg = hello("Journeys")

    html = ~s(
      <html>
        <body style="text-align: center; margin-top: 50px">
          <h1>#{msg}</h1>
        <body>
      </html>
    )
  end

  def run do
    {:ok, _} = Plug.Adapters.Cowboy.http(Intro, [])
  end

  def shutdown do
     Plug.Adapters.Cowboy.shutdown Intro.HTTP
  end

  @doc ~S"""
  Returns a "Hello, World!"" message

  ## Examples:

      iex> Intro.hello_world
      "Hello, World!"

  """
  def hello_world do
    hello("World")
  end

  @doc ~S"""
  Returns a message saying hello to a name

  ## Examples:

      iex> Intro.hello("Kai")
      "Hello, Kai!"

      iex> Intro.hello("Matthew")
      "Hello, Matthew!"
  """
  def hello(name) do
    "Hello, #{name}!"
  end
end
