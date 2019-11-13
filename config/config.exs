# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test,
  ecto_repos: [Test.Repo]

# Configures the endpoint
config :test, TestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BhReawV2vqPro7erBFxvgWByUPOX2YSCSKDGFegv2zu2FerxJF7UxaPDhDJwkxTJ",
  render_errors: [view: TestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Test.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :test, Test.Auth.Guardian,
  issuer: "Test",
  ttl: { 30, :days },
  allowed_drift: 2000,
  secret_key: "5ecret_k3y"