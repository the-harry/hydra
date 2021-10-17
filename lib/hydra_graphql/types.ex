defmodule HydraGraphql.Types do
  use Absinthe.Schema.Notation

  alias HydraGraphql.Types

  import_types(Types.ProductType)
end
