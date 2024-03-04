defmodule Myproject.Repo.Migrations.AlterEventsTable do
  use Ecto.Migration

  def change do
    drop index(:events, [:user_id])
    alter table(:events) do
      remove :user_id
    end
  end
end
