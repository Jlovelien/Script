defmodule TestWeb.LayoutView do
  use TestWeb, :view

  def logged_in?(conn) do
  	Guardian.Plug.authenticated?(conn, [])
  end

  def username(conn) do
    
    user = Guardian.Plug.current_resource(conn)

    %{username: username} = user

    username
  end
end
