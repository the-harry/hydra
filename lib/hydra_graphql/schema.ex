defmodule HydraGraphql.Schema do
  use Absinthe.Schema

  alias HydraGraphql.Resolvers

  import_types(HydraGraphql.Types)

  query do
  end

  mutation do
    @desc "Create Picking"

    field :create_picking, :string do
      arg(:products, list_of(non_null(:product_input)))
      resolve(&Resolvers.PickingResolver.create_picking/3)
    end
  end
end
