defmodule Myproject.Events.EventUser do
  use Ecto.Schema
  import Ecto.Changeset

  schema "eventusers" do

    field :event_id, :id
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(event_user, attrs) do
    event_user
    |> cast(attrs, [])
    |> validate_required([])
  end
end
