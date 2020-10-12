defmodule StructWeb.InsertedWoodenSidingWallLive.Index do
  use StructWeb, :live_view

  alias Struct.Elements
  alias Struct.Elements.InsertedWoodenSidingWall

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :inserted_wooden_siding_walls, list_inserted_wooden_siding_walls())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Inserted wooden siding wall")
    |> assign(:inserted_wooden_siding_wall, Elements.get_inserted_wooden_siding_wall!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Inserted wooden siding wall")
    |> assign(:inserted_wooden_siding_wall, %InsertedWoodenSidingWall{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Inserted wooden siding walls")
    |> assign(:inserted_wooden_siding_wall, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    inserted_wooden_siding_wall = Elements.get_inserted_wooden_siding_wall!(id)
    {:ok, _} = Elements.delete_inserted_wooden_siding_wall(inserted_wooden_siding_wall)

    {:noreply, assign(socket, :inserted_wooden_siding_walls, list_inserted_wooden_siding_walls())}
  end

  defp list_inserted_wooden_siding_walls do
    Elements.list_inserted_wooden_siding_walls()
  end
end
