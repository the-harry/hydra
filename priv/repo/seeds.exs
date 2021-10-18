# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hydra.Repo.insert!(%Hydra.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Hydra.Repo.insert!(%Hydra.Stores.Store{
  name: "empresa 1",
  email: "empresa@one.com",
  description: "Empresa topzera",
  lat: -23.2131234,
  long: -46.687566
})

Hydra.Repo.insert!(%Hydra.Stores.Store{
  name: "ACME",
  email: "acme@us.com",
  description: "America company selling everything",
  lat: -26.2131234,
  long: -43.687566
})
