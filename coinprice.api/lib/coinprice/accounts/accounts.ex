defmodule Coinprice.Accounts do
  import Ecto.{Changeset, Query}

  alias Coinprice.Repo
  alias Coinprice.Accounts.User

  def get_users do
    users = User |> Repo.all
    {:ok, users}
  end
  def get_user(id) do
    user = User |> Repo.get(id)
    {:ok, user}
  end
end
