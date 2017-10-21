defmodule CoinpriceWeb.Router do
  use CoinpriceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CoinpriceWeb do
    pipe_through :api
  end

  forward "/graphql", Absinthe.Plug, schema: CoinpriceWeb.Schema
end
