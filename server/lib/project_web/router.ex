defmodule ProjectWeb.Router do
  use ProjectWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProjectWeb do
    pipe_through :api
    resources "/items", ItemController
  end

  # scope "/metrics" do
  #   get "/", ProjectWeb.MetricsController, :index
  # end
end
