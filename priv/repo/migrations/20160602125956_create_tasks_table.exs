defmodule Todo.Repo.Migrations.CreateTasksTable do
  use Ecto.Migration

  def up do
    create table(:tasks) do
      add :name, :string
      timestamps
    end
  end

  def down do
    drop table(:tasks)
  end
end
