defmodule Suigin.Repo.Migrations.AddTaskIdToStatus do
  use Ecto.Migration

  def change do
    alter table(:status) do
      add :task_id, :integer
    end
  end
end
