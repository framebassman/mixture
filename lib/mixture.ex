defmodule Mixture do
  use Application
  require Logger

  def start(_type, _args) do
    Logger.info("Hello world")
    children = []
    Supervisor.start_link(children, strategy: :one_for_one)
  end

  def hello do
    :world
  end
end
