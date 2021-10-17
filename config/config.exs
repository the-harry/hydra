# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hydra,
  ecto_repos: [Hydra.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :hydra, HydraWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2Y75MG7dz3226fKFiqOfTmZ+Z6ia51OKrBuCtJy+1axjU/qLuzwnvHMywZ5jRjao",
  render_errors: [view: HydraWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Hydra.PubSub,
  live_view: [signing_salt: "u0iYkNaZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
