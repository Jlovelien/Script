defmodule Test.Accounts do

    import Ecto.Changeset
    alias Test.Accounts.User


    alias Test.Repo
    def create_user(params) do
        register_changeset(params)
        |> Repo.insert
    end

    ## Used to set and validate the given changeset
def register_changeset(params \\ %{}) do
    %User{}
    |> cast(params, [:username, :email, :password, :type])
    |> validate_required([:username, :email, :password])
  end

  end
