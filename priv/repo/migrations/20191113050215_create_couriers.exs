defmodule Test.Repo.Migrations.CreateCouriers do
  use Ecto.Migration

  def change do
    create table(:couriers) do
      add :name, :string
      add :adress, :string
      add :courier_id, :integer

      timestamps()
    end

  end
end
