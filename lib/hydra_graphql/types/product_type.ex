defmodule HydraGraphql.Types.ProductType do
  use Absinthe.Schema.Notation

  input_object :product_input do
    field :product, non_null(:string)
    field :stores, list_of(non_null(:string))
  end
end
