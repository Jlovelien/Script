defmodule Test.Accounts.Session do

    alias Test.Accounts.User
    alias Test.Repo
  
    def authenticate(%{"username" => username, "password" => given_password}) do
        user = Repo.get_by(User, username: username)
    
        check_password(user, given_password)
      end
    
      
      defp check_password(nil, _given_password) do
        {:error, "No user with this username was found!"}
      end
    
      
      defp check_password(%{password: password} = user, given_password) do
        if password == given_password do
            {:ok, user}
        else
            {:error, "Incorrect password"}
        end
      end


    

  
  end