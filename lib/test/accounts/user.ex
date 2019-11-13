defmodule Test.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string, unique: true    
    field :password, :string
    field :username, :string, unique: true 
    field :type, :string
    

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password, :type])
    |> validate_required([:username, :email, :password, :type])
  end
end
