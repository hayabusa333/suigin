# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Suigin.Repo.insert!(%Suigin.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Suigin.{Status, Category, Repo}

## Status table initialize data insert
status = [
  %{name: "todo"},
  %{name: "doing"},
  %{name: "done"}
]

Enum.each(status, fn(params) ->
  Status.changeset(%Status{}, params) |> Repo.insert!
end)

## Category table initialize data insert
categories = [
  %{name: "required"},
  %{name: "valuable"},
  %{name: "illusion"},
  %{name: "useless"}
]

Enum.each(categories, fn(params) ->
  Category.changeset(%Category{}, params) |> Repo.insert!
end)