defmodule PhoenixHerokuStarterKitWeb.PageController do
  use PhoenixHerokuStarterKitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
