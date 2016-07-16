defmodule Suigin.Repo.Migrations.CreateStatus do
  use Ecto.Migration

  def change do
    create table(:status) do
      add :name, :string

      timestamps()
    end

  end
end
