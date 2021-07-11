# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_mis,
  ecto_repos: [ProjectMis.Repo]

# Configures the endpoint
config :project_mis, ProjectMisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h7L613uX2F0tMHUIPCApx2Ns8UZLfJk0Ozt15ZvcrWuy7fYgv4mIRCwFpUcKg4rW",
  render_errors: [view: ProjectMisWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProjectMis.PubSub,
  live_view: [signing_salt: "ttBS/QzA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
