defmodule HydraGraphql.Resolvers.PickingResolver do
  def create_picking(_parent, params, _resolution) do
    # %{
    #   products: [
    #     %{product: "123", stores: ["123", "123123"]},
    #     %{product: "123", stores: ["123", "123123"]}
    #   ]
    # }

    {:ok, "We received the payload, and we are going to create all orders!"}
  end
end
