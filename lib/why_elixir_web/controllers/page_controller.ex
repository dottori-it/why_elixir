defmodule WhyElixirWeb.PageController do
  use WhyElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def summation(conn, params) do
    %{"n" => n} = params

    tot = sum_numbers(String.to_integer(n), 0)

    text(conn, "#{tot}")
  end

  defp sum_numbers(0, sum), do: sum

  defp sum_numbers(current, sum), do:
    sum_numbers(current - 1, sum + current)

end
