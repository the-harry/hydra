defmodule Hydra.Pickings.Workers.MongoInsertWorker do
  use GenServer

  alias Hydra.Pickings.Core.StorePickings

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil)
  end

  def init(_), do: {:ok, nil}

  def handle_call({:insert_mongo, payload}, _from, state) do
    result = StorePickings.store_pickings_into_mongo(payload)

    {:reply, result, state}
  end
end
