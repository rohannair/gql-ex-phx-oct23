alias Coinprice.Accounts

defmodule CoinpriceWeb.UserResolver do
  def all(_args, _info), do: Accounts.get_users
  def one(_args, _info), do: Accounts.get_user(1)
end
