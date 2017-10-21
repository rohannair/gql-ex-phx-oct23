defmodule Coinprice.Coins do
  alias Coinprice.Coins.Coin
  alias Coinprice.Coins.Price

  def get_coins do
    with {:ok, coins} <- Coin.all do
      coins = Enum.map(coins, fn %{ symbol: symbol } = c ->
        with {:ok, %{"USD" => price}} <- get_price(symbol) do
          Map.merge(c, %{price: price})
        else
          _ -> c
        end
      end)

      {:ok, coins}
    else
      _ -> {:error}
    end
  end

  def get_coin(id) do
    with {:ok, %{ symbol: symbol } = coin} <- Coin.one(id),
      {:ok, %{"USD" => price}} <- get_price(symbol) do
        {:ok, Map.merge(coin, %{price: price})}
    else
      _ -> {:error}
    end
  end

  defp get_price(sym) do
    case Price.get("?fsym=#{sym}&tsyms=USD") do
      {:ok, %HTTPoison.Response{ body: body }} ->
        {:ok, body}
      _ ->
        {:error}
    end
  end
end
