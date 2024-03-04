defmodule MyprojectWeb.EventController do
  use MyprojectWeb, :controller
  alias Myproject.Events
  alias Myproject.Events

  def list_events(conn, _params) do

  end

  def create_event(conn, params) do
    {:ok, _event} = Events.create_event(params)

    conn
        |> put_status(200)
        |> json(%{
          message: "Event added successfully"
        })

  end
end
