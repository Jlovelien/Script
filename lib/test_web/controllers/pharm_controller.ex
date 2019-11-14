defmodule TestWeb.PharmController do
    use TestWeb, :controller
    alias Test.Orders

    plug Guardian.Plug.EnsureAuthenticated, handler: __MODULE__

    def index(conn, _params) do
      orders = Orders.list_orders()
      orders1 = Orders.list_today_orders()
      render conn, orders: orders, orders1: orders1
    end

    def today(conn, _params) do
      orders1 = Orders.list_today_orders()
      render conn, orders1: orders1
    end

    ## Should redirect and flash the error message when trying to accsess page when not signed in
    def auth_error(conn, {_type, _reason}, _opts) do
        conn
        |> put_flash(:error, "You need to log in to view your orders.")
        |> redirect(to: "/")
      end

  end
