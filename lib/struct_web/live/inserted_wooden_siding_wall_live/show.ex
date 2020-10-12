defmodule StructWeb.InsertedWoodenSidingWallLive.Show do
  use StructWeb, :live_view

  alias Struct.Elements

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:inserted_wooden_siding_wall, Elements.get_inserted_wooden_siding_wall!(id))}
  end

  defp page_title(:show), do: "Show Inserted wooden siding wall"
  defp page_title(:edit), do: "Edit Inserted wooden siding wall"
end
