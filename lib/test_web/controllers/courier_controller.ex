defmodule TestWeb.CourierController do
    use TestWeb, :controller
    alias Test.Orders

    plug Guardian.Plug.EnsureAuthenticated, handler: __MODULE__

    def index(conn, _params) do
      orders = Orders.list_my_orders(conn)



      render conn, orders: orders
    end

    def auth_error(conn, {_type, _reason}, _opts) do
        conn
        |> put_flash(:error, "You need to log in to view your messages.")
        |> redirect(to: "/")
      end

  end
