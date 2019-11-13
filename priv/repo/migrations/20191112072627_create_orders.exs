defmodule Test.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :name, :string
      add :adress, :string
      add :pickup, :naive_datetime
      add :courier, :string
      add :delivered, :string

      timestamps()
    end

  end
end
