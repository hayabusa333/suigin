defmodule Suigin.Category do
  use Suigin.Web, :model

  schema "category" do
    field :name, :string

    belongs_to :tasks, Task, foreign_key: :task_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
