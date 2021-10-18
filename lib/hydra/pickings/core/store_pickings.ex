defmodule Hydra.Pickings.Core.StorePickings do
  alias Hydra.Repo
  alias Hydra.Response

  def store_pickings_into_mongo(%{"products" => products}) do
    products
    |> build_payload_per_product()
    |> insert_into_mongo()
  end

  defp build_payload_per_product(products) do
    products
    |> Enum.map(&build_payload_to_insert_into_mongo_per_store(&1["stores"], &1["product"]))
    |> Enum.flatten()
  end

  defp build_payload_to_insert_into_mongo_per_store(stores, product_name) do
    stores
    |> Enum.map(fn store_id ->
      store = Repo.get(Store, store_id)

      %{
        store: %{
          id: store.id,
          description: store.description,
          name: store.name,
          lat: store.lat,
          long: store.long
        },
        product: product_name,
        delivered: false
      }
    end)
  end

  defp insert_into_mongo(products) do
    Enum.map(products, &perform_insert/1)
  end

  defp perform_insert(product) do
    {:ok, response} = Mongo.insert_one(:mongo, "orders", product)

    response
  end
end
