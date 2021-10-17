defmodule Hydra.Repo do
  use Ecto.Repo,
    otp_app: :hydra,
    adapter: Ecto.Adapters.Postgres
end
