defmodule Coinprice.Accounts do
  alias Coinprice.Accounts.User

  def get_users do
    User.all
  end

  def get_user(id) do
    User.one(id)
  end
end
