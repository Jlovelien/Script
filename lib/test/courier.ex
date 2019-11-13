defmodule Test.Courier do
  use Ecto.Schema
  import Ecto.Changeset


  schema "couriers" do
    field :adress, :string
    field :courier_id, :integer
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(courier, attrs) do
    courier
    |> cast(attrs, [:name, :adress, :courier_id])
    |> validate_required([:name, :adress, :courier_id])
  end
end
