defmodule Myproject.Repo.Migrations.CreateEventusers do
  use Ecto.Migration

  def change do
    create table(:eventusers) do
      add :event_id, references(:event, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:eventusers, [:event_id])
    create index(:eventusers, [:user_id])
  end
end
