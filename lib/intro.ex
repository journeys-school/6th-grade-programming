defmodule Intro do
  use Plug.Router
  plug Plug.Parsers, parsers: [:urlencoded]
  plug :match
  plug :dispatch

  get "/hello/:name" do
    send_resp(conn, 200, hello_html(name))
  end

  get "/temperature" do
    send_resp(conn, 200, hello_html("Journeys"))
  end

  get "/" do
    send_resp(conn, 200, homepage_html)
    end

  get "/favicon.ico" do
    send_resp(conn, 404, "")
  end

  def homepage_html do
    msg = "6th Grade Programming"

    html = ~s(
      <html>
        <head>
          <meta http-equiv="Content-Type" Content="text/html; charset=UTF-8" />
        </head>
        <body style="text-align: center; margin-top: 50px">
          <h1>#{msg}</h1>
          <ul>
            <li>
              <a href= "/temperature"> Temperature</a>
            </li>
          </ul>
        </body>
      </html>
    )

  end

  def hello_html(x) do
    msg = hello(x)

    temp=Intro.Labs.Temp.read_from_sensor

    html = ~s(
      <html>
        <head>
          <meta http-equiv="Content-Type" Content="text/html; charset=UTF-8" />
        </head>
        <body style="text-align: center; margin-top: 50px">
          <h1>#{msg}</h1>
          <p>#{Intro.Labs.Temp.message(temp)} </p>
          <p>#{Intro.Labs.Temp.to_string(temp)} </p>
        </body>
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
