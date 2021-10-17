defmodule HydraGraphql.Resolvers.PickingResolver do
  alias Hydra.Pickings

  def create_picking(_parent, params, _resolution) do
    Task.async(fn -> Pickings.create_picking(params) end)

    {:ok, "We received the payload, and we are going to create all orders!"}
  end
end
