# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :struct,
  ecto_repos: [Struct.Repo]

# Configures the endpoint
config :struct, StructWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jLEMcoJNV1EsKMLa7RLLypeCEOjGA6ON+i6PaZnEM6ISLXbUQ2xBsyXCEnXlhPXv",
  render_errors: [view: StructWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Struct.PubSub,
  live_view: [signing_salt: "6H/JN+Ta"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
