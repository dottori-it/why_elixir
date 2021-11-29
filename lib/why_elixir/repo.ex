defmodule WhyElixir.Repo do
  use Ecto.Repo,
    otp_app: :why_elixir,
    adapter: Ecto.Adapters.Postgres
end
