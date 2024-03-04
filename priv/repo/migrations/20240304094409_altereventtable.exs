defmodule Myproject.Repo.Migrations.Altereventtable do
  use Ecto.Migration

  def change do
    alter table(:events) do
      add :start_time, :naive_datetime
    end
  end
end
