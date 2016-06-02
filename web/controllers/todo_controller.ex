defmodule Todo.TodoController do
  use Todo.Web, :controller

  alias Todo.Task

  def index(conn, _params) do
    changeset = Task.changeset(%Task{})

    conn
    |> render("index.html", changeset: changeset, action: todo_path(conn, :store))
  end

  def store(conn, _params) do
    render conn, "index.html"
  end
end
