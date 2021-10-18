use Mix.Config

config :hydra, :mongo_poolboy,
  name: {:local, :worker},
  worker_module: Hydra.Pickings.Worker.MongoInsertWorker,
  size: 2,
  max_overflow: 2
