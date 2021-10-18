use Mix.Config

config :hydra, :picking_consumer,
  name: :picking_consumer,
  producer: [
    module:
      {BroadwayKafka.Producer,
       [
         hosts: [kafka: 9092],
         group_id: "k-pickings-orders-to-create",
         topics: ["k-picking"]
       ]},
    concurrency: 1
  ],
  processors: [
    default: [
      concurrency: 10
    ]
  ],
  batchers: [
    mongo: [concurrency: 10, batch_size: 10, batch_timeout: 10_000]
  ]
