defmodule Test.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset


  schema "orders" do
    field :adress, :string
    field :courier, :string
    field :delivered, :string
    field :name, :string
    field :pickup, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:name, :adress, :pickup, :courier, :delivered])
    |> validate_required([:name, :adress, :pickup, :courier, :delivered])
  end
end
