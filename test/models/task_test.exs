defmodule Suigin.TaskTest do
  use Suigin.ModelCase

  alias Suigin.Task

  @valid_attrs %{category: 42, name: "some content", status: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Task.changeset(%Task{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Task.changeset(%Task{}, @invalid_attrs)
    refute changeset.valid?
  end
end
