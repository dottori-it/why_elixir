defmodule WhyElixirWeb.PageController do
  use WhyElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def prova(conn, params) do
    %{"n" => n} = params

    tot = 1..String.to_integer(n)
    |> Enum.reduce(fn a, b ->
      a + b
    end)

    text(conn, "ciao #{tot}")
  end
end
