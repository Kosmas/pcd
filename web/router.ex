defmodule Pcd.Router do
  use Pcd.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Pcd do
    pipe_through :api
  end
end
