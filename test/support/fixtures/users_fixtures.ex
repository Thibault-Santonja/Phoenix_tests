defmodule BasicCrud.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BasicCrud.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        admin: true,
        name: "some name",
        password: "some password"
      })
      |> BasicCrud.Users.create_user()

    user
  end
end
