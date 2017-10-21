defmodule CoinpriceWeb.Schema do
  use Absinthe.Schema
  import_types CoinpriceWeb.Schema.Types

  query do
    field :viewer, :viewer do
      resolve &CoinpriceWeb.UserResolver.one/2
    end
  end

  mutation do
    @desc "Add a coin"
    field :create_coin, type: :coin do
      arg :name, non_null(:string)
      arg :symbol, non_null(:string)

      resolve &CoinpriceWeb.CoinResolver.create/2
    end
  end
end
