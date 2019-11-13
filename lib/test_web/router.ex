defmodule TestWeb.Router do
  use TestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :browser_session do
    plug Test.Auth.Pipeline
  end

  pipeline :api do
    plug :accepts, ["json"]
  end


  scope "/", TestWeb do
    pipe_through [:browser, :browser_session]

    get "/", PageController, :index
    get "/login", PageController, :login
    get "/signup", PageController, :signup
    get "/logout", PageController, :logout
    get "/pharmacy", PharmController, :index
    get "/today", PharmController, :today
    get "/courier", CourierController, :index

    resources "/orders", OrderController

    post "/signup", PageController, :create_user
    post "/login", PageController, :login_user
  end

  # Other scopes may use custom stacks.
  # scope "/api", TestWeb do
  #   pipe_through :api
  # end
end
