defmodule Coinprice.Coins do
  alias Coinprice.Repo
  alias Coinprice.Coins.{Coin, Price}

  def get_coins do
    coins = Repo.all(Coin)
    {:ok, update_coin_list_prices(coins)}
  end

  def get_coin(id) do
    with {:ok, %{ symbol: symbol } = coin} <- Repo.get(Coin, id),
      {:ok, %{"USD" => price}} <- get_price(symbol) do
        {:ok, Map.merge(coin, %{price: price})}
    else
      _ -> {:error}
    end
  end

  def add_coin(params) do
    Coin.changeset(%Coin{}, params)
    |> Repo.insert
  end

  defp get_price(sym) do
    case Price.get("?fsym=#{sym}&tsyms=USD") do
      {:ok, %HTTPoison.Response{ body: body }} ->
        {:ok, body}
      _ ->
        {:error}
    end
  end

  defp update_coin_list_prices(coins) do
    Enum.map(coins, fn %{ symbol: symbol } = c ->
      case get_price(symbol) do
        {:ok, %{"USD" => price}} ->
          Map.merge(c, %{price: price})
        _ -> c
      end
    end)
  end

end
