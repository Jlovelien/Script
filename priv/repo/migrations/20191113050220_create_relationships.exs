defmodule Test.Repo.Migrations.CreateRelationships do
  use Ecto.Migration

  def change do
    create table(:relationships) do
      add :pharmacy_id, :integer
      add :courier_id, :integer

      timestamps()
    end

  end
end
