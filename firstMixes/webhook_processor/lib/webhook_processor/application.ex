defmodule WebhookProcessor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    app_port = Application.get_env(:webhook_processor, :port)
    children = [
      # Starts a worker by calling: WebhookProcessor.Worker.start_link(arg)
      # {WebhookProcessor.Worker, arg}
      Plug.Cowboy.child_spec(
        scheme: :http, 
        plug: WebhookProcessor.Endpoint, 
        options: [port: app_port]
      )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WebhookProcessor.Supervisor]
    IO.puts("Starting Server on #{app_port}")
    Supervisor.start_link(children, opts)
  end
end
