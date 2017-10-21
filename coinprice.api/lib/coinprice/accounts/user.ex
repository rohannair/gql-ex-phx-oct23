defmodule Coinprice.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coinprice.Repo

  schema "users" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  def changeset(schema, params \\ %{}) do
    schema
    |> cast(params, [:email, :name])
    |> validate_required([:email])
  end
end
