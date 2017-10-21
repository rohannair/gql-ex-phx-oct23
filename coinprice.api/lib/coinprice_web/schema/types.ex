defmodule CoinpriceWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :viewer do
    field :id, :id
    field :email, :string
    field :name, :string
    field :role, :string

    field :coins, list_of(:coin) do
      resolve &CoinpriceWeb.CoinResolver.all/2
    end
  end

  object :coin do
    field :id, :id
    field :name, :string
    field :symbol, :string
    field :price, :string
  end

  object :mutation do

  end
end
