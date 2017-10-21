alias Coinprice.Coins

defmodule CoinpriceWeb.CoinResolver do
  def all(_args, _info) do
    Coins.get_coins
  end

  def one(%{"id" => id}, _info) do
    Coins.get_coin(id)
  end
end
