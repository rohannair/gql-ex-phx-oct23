defmodule Coinprice.Repo.Migrations.AddCoinsAndUsers do
  use Ecto.Migration

  def up do
    execute("CREATE EXTENSION citext;") # case insensitive plugin
    create table("users") do
      add :email, :citext, null: false
      add :name, :string

      timestamps()
    end
    create unique_index(:users, [:email])

    create table("coins") do
      add :name, :string, null: false
      add :symbol, :string, null: false

      timestamps()
    end
    create unique_index(:coins, :symbol)
  end

  def down do
    drop table("coins")
    drop table("users")
    execute("DROP EXTENSION citext;")
  end
end
