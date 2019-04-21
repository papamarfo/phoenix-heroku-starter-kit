# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_heroku_starter_kit,
  ecto_repos: [PhoenixHerokuStarterKit.Repo]

# Configures the endpoint
config :phoenix_heroku_starter_kit, PhoenixHerokuStarterKitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uIwMkJJJbCdhIdWFFZx2U94Megjx8Sxc0yCuK2vvMHARql5Ppeo+TfFMX7O2qNk0",
  render_errors: [view: PhoenixHerokuStarterKitWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixHerokuStarterKit.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
