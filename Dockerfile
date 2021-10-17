FROM elixir:1.12

WORKDIR /hydra

COPY . .

RUN mix local.hex --force && mix local.rebar --force && \
    mix deps.get && mix deps.compile

RUN mix archive.install hex phx_new 1.5.13

RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get update -qq
