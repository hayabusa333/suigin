defmodule Suigin.PageController do
  use Suigin.Web, :controller

  def index(conn, _params) do
    tasks = Suigin.Task |> Repo.all()
    local_time = :calendar.local_time
    render conn, "index.html", tasks: tasks
  end
end
