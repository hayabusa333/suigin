defmodule Suigin.PageController do
  use Suigin.Web, :controller

  def index(conn, _params) do
    tasks = Suigin.Task |> Repo.all()
    render conn, "index.html", tasks: tasks
  end
end
