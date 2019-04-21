defmodule PhoenixHerokuStarterKit.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_heroku_starter_kit,
    adapter: Ecto.Adapters.Postgres
end
