defmodule Test.Relationship do
  use Ecto.Schema
  import Ecto.Changeset


  schema "relationships" do
    field :courier_id, :integer
    field :pharmacy_id, :integer

    timestamps()
  end

  @doc false
  def changeset(relationship, attrs) do
    relationship
    |> cast(attrs, [:pharmacy_id, :courier_id])
    |> validate_required([:pharmacy_id, :courier_id])
  end
end
