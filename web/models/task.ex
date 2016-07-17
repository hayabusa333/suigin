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
    |> validate_length(:name, min: 1, max: 256)
    |> validate_number(:status, greater_than_or_equal_to: 1, less_than_or_equal_to: 3)
    |> validate_number(:category, greater_than_or_equal_to: 1, less_than_or_equal_to: 4)
    |> validate_required([:name, :status, :category])
  end

end
