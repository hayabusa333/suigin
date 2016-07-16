defmodule Suigin.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :status, :integer
      add :category, :integer

      timestamps()
    end
  end
end
