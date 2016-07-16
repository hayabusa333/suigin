defmodule Suigin.Repo.Migrations.AddTaskIdToCategory do
  use Ecto.Migration

  def change do
    alter table(:category) do
      add :task_id, :integer
    end
  end
end
