defmodule Test.Auth.Pipeline do
    use Guardian.Plug.Pipeline,
      otp_app: :test,
      module: Test.Auth.Guardian
  
    plug Guardian.Plug.VerifySession
    plug Guardian.Plug.LoadResource, allow_blank: true
  end 