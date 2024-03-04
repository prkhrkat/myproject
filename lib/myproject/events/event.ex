defmodule Myproject.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :name, :string
    field :plan, :string
    field :billing_interval, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :plan, :billing_interval])
    |> validate_required([:name, :plan, :billing_interval])
  end
end
