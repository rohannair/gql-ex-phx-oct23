# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Coinprice.Repo.insert!(%Coinprice.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Coinprice.Repo.insert!(%Coinprice.Accounts.User{
  email: "r@rohannair.ca",
  name: "Rohan Nair"
})

Coinprice.Repo.insert!(%Coinprice.Coins.Coin{
  name: "BitCoin",
  symbol: "BTC"
})

Coinprice.Repo.insert!(%Coinprice.Coins.Coin{
  name: "Ether",
  symbol: "ETH"
})
