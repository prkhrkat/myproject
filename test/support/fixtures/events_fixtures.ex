defmodule Myproject.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Myproject.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        billing_interval: "some billing_interval",
        name: "some name",
        plan: "some plan"
      })
      |> Myproject.Events.create_event()

    event
  end

  @doc """
  Generate a event_user.
  """
  def event_user_fixture(attrs \\ %{}) do
    {:ok, event_user} =
      attrs
      |> Enum.into(%{

      })
      |> Myproject.Events.create_event_user()

    event_user
  end
end
