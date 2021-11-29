defmodule WhyElixirWeb.PageController do
  use WhyElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "altro.html")
  end

  def prova(conn, params) do
    %{"n" => n} = params

    tot = sum_numbers(String.to_integer(n), 0)

    text(conn, "#{tot}")
  end

  defp sum_numbers(current, sum) do
    if (current != 0) do
      sum_numbers(current - 1, sum + current)
    else
      sum
    end
  end

end
