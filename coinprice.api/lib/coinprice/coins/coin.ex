defmodule Coinprice.Coins.Coin do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coinprice.Repo

  schema "coins" do
    field :name, :string
    field :symbol, :string

    timestamps()
  end

  def changeset(schema, params \\ %{}) do
    schema
    |> cast(params, [:name, :symbol])
    |> validate_required([:name, :symbol])
  end
end
