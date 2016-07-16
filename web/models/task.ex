defmodule Suigin.Task do
  use Suigin.Web, :model

  schema "tasks" do
    field :name, :string
    field :status, :integer
    field :category, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :status, :category])
    |> validate_required([:name, :status, :category])
  end
end
