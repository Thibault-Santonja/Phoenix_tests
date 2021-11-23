defmodule BasicCrudWeb.PageController do
  use BasicCrudWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
