defmodule TestWeb.LayoutView do
  use TestWeb, :view
## Check if a user is logged in
  def logged_in?(conn) do
  	Guardian.Plug.authenticated?(conn, [])
  end
## parse the username to be used for identification on page
  def username(conn) do

    user = Guardian.Plug.current_resource(conn)

    %{username: username} = user

    username
  end
end
