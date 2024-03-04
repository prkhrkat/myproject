defmodule MyprojectWeb.UserController do
  use MyprojectWeb, :controller
  alias MyProject.Events

  def user_analytics(conn, params) do
    events =
      if params["event_name"] do
        Events.list_required_events(params["event_name"])
      else
        Events.list_all_events()
      end

    conn
    |> put_status(200)
    |> json(%{
      data: events
    })
  end
end
