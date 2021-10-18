defmodule Hydra.Repo.Migrations.CreateStores do
  use Ecto.Migration

  def change do
    create table(:stores, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :lat, :float
      add :long, :float
      add :description, :string
      add :email, :string

      timestamps()
    end

  end
end
