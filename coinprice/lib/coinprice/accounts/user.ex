defmodule Coinprice.Accounts.User do
  @users [
    %{
      id: 0,
      email: "r@rohannair.ca",
      name: "Rohan Nair",
      role: "owner"
    },
    %{
      id: 1,
      email: "johndoe@example.com",
      name: "John Doe",
      role: "user"
    }
  ]

  def all do
    {:ok, @users}
  end

  def one(id) do
    user = Enum.find(@users, fn(x) -> x.id == id end)
    case user do
      nil -> {:error, "Could not find that user"}
      _ -> {:ok, user}
    end
  end
end
