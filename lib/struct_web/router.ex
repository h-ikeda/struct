defmodule StructWeb.Router do
  use StructWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {StructWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StructWeb do
    pipe_through :browser

    live "/", PageLive, :index
    live "/inserted_wooden_siding_walls", InsertedWoodenSidingWallLive.Index, :index
    live "/inserted_wooden_siding_walls/new", InsertedWoodenSidingWallLive.Index, :new
    live "/inserted_wooden_siding_walls/:id/edit", InsertedWoodenSidingWallLive.Index, :edit
    live "/inserted_wooden_siding_walls/:id", InsertedWoodenSidingWallLive.Show, :show
    live "/inserted_wooden_siding_walls/:id/show/edit", InsertedWoodenSidingWallLive.Show, :edit
  end

  # Other scopes may use custom stacks.
  # scope "/api", StructWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: StructWeb.Telemetry
    end
  end
end
