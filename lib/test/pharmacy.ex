defmodule Test.Pharmacy do
  use Ecto.Schema
  import Ecto.Changeset


  schema "pharmacies" do
    field :adress, :string
    field :name, :string
    field :pharmacy_id, :integer

    timestamps()
  end

  @doc false
  def changeset(pharmacy, attrs) do
    pharmacy
    |> cast(attrs, [:name, :adress, :pharmacy_id])
    |> validate_required([:name, :adress, :pharmacy_id])
  end
end
