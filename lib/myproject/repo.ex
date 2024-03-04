defmodule Myproject.Repo do
  use Ecto.Repo,
    otp_app: :myproject,
    adapter: Ecto.Adapters.SQLite3
end
