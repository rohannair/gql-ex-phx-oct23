defmodule Coinprice.Coins.Price do
  use HTTPoison.Base

  @base_url "https://min-api.cryptocompare.com/data/price"

  def process_url(query_params) do
    case (String.at(query_params, 0) == "?") do
      true -> @base_url <> query_params
      _ -> @base_url <> "?" <> query_params
    end
  end

  def process_response_body(res) do
    res |> Poison.decode!
  end
end
