defmodule Coinprice.Coins.Coin do
  @coins [
    %{id: 0, name: "BitCoin", symbol: "BTC" },
    %{id: 1, name: "Ether", symbol: "ETH" },
    %{id: 2, name: "Ripple", symbol: "XRP" },
  ]

  def all do
    {:ok, @coins}
  end

  def one(id) do
    coin = Enum.find(@coins, fn(x) -> x.id == id end)
    case coin do
      nil -> {:error, "Could not find that coin"}
      _ -> {:ok, coin}
    end
  end
end
