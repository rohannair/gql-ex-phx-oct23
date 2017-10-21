# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coinprice,
  ecto_repos: [Coinprice.Repo]

# Configures the endpoint
config :coinprice, CoinpriceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+C9X/Zuq/AziA8Ajb56u+3zzS+P44aKo4La+XUstLeLBTY+ZwrS0oLtOg+OyQ2eZ",
  render_errors: [view: CoinpriceWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Coinprice.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
