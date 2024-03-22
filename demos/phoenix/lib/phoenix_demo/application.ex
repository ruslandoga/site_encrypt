defmodule PhoenixDemo.Application do
  use Application

  def start(_type, _args) do
    Supervisor.start_link(
      [PhoenixDemo.Endpoint],
      strategy: :one_for_one,
      name: __MODULE__
    )
  end
end
