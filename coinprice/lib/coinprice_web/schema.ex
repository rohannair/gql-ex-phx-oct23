defmodule CoinpriceWeb.Schema do
  use Absinthe.Schema
  import_types CoinpriceWeb.Schema.Types

  query do
    field :viewer, :viewer do
      resolve &CoinpriceWeb.UserResolver.one/2
    end
  end
end
