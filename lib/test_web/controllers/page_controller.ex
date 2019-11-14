defmodule TestWeb.PageController do
  use TestWeb, :controller
  alias Test.Accounts.Session
  alias Test.Auth.Guardian

  def index(conn, _params) do
    changeset = Test.Accounts.register_changeset()


    render conn, user_changeset: changeset
  end

  @spec login(Plug.Conn.t(), any) :: Plug.Conn.t()
  def login(conn, _params) do
    render conn
  end

  def logout(conn, _params) do
    conn
    |> Guardian.Plug.sign_out
    |> redirect(to: "/")
  end


  def login_user(conn, %{"credentials" => credentials}) do
    ## Send to Session controller to validate the user and match given PW with the one in the DB
    case Session.authenticate(credentials) do

      {:ok,user} ->
        %{type: type} = user
        conn
        |> Guardian.Plug.sign_in(user)
        |> redirect(to: "/#{type}")

      {:error, message} ->
        conn
        |> put_flash(:error, message)
        |> render("login.html")
    end
  end

  alias Test.Accounts
  def signup(conn, _params) do

    changeset = Accounts.register_changeset()
    render conn, user_changeset: changeset
  end

  def create_user(conn, %{"user" => user_params}) do
    case Accounts.create_user(user_params) do
      {:ok, _user} ->
        conn
        |> put_flash(:info, "User created successfully!")
        |> redirect(to: "/")
      {:error, user_changeset} ->
        conn
        |> put_flash(:error, "Unable to create account!")
        |> render("signup.html", user_changeset: user_changeset)
    end
  end

  def pharmacy(conn, _params) do
    render conn
  end

  def curier(conn, _params) do
    render conn
  end
end
