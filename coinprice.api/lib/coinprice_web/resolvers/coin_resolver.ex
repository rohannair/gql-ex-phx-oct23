alias Coinprice.Coins

defmodule CoinpriceWeb.CoinResolver do
  def all(_args, _info) do
    Coins.get_coins
  end

  def one(%{"id" => id}, _info) do
    Coins.get_coin(id)
  end

  def create(%{name: name, symbol: symbol} = params, _info) do
    Coins.add_coin(params)
  end

  def create(args, _) do
    {:error, "Doesn't have the required variables"}
  end
end
