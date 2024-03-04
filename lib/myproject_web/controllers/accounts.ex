defmodule MyprojectWeb.UserController do
  use MyprojectWeb, :controller
  alias Myproject.Events.Event
  alias Myproject.Accounts
  alias MyProject.Events

  def list_users(conn, params) do
    users =
      if params["event_name"] do
        event = Event.get_event(params["event_name"])
        Events.list_event_users(event.id)
      else
        Accounts.list_users()
      end
    conn
    |> put_status(200)
    |> json(%{
      list: users
    })
  end
end
