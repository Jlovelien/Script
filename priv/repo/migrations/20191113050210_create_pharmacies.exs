defmodule Test.Repo.Migrations.CreatePharmacies do
  use Ecto.Migration

  def change do
    create table(:pharmacies) do
      add :name, :string
      add :adress, :string
      add :pharmacy_id, :integer

      timestamps()
    end

  end
end
