defmodule Hydra.Pickings do
  alias Hydra.Pickings.Core.SendProductsToKafka

  def create_picking(products) do
    SendProductsToKafka.execute(products)
  end
end
