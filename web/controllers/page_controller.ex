defmodule Suigin.PageController do
  use Suigin.Web, :controller

  def index(conn, _params) do
    required_tasks = Suigin.Task |> Repo.all()
    render conn, "index.html", required_tasks: required_tasks
  end
end
