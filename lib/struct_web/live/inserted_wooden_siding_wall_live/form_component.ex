defmodule StructWeb.InsertedWoodenSidingWallLive.FormComponent do
  use StructWeb, :live_component

  alias Struct.Elements

  @impl true
  def update(%{inserted_wooden_siding_wall: inserted_wooden_siding_wall} = assigns, socket) do
    changeset = Elements.change_inserted_wooden_siding_wall(inserted_wooden_siding_wall)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"inserted_wooden_siding_wall" => inserted_wooden_siding_wall_params}, socket) do
    changeset =
      socket.assigns.inserted_wooden_siding_wall
      |> Elements.change_inserted_wooden_siding_wall(inserted_wooden_siding_wall_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"inserted_wooden_siding_wall" => inserted_wooden_siding_wall_params}, socket) do
    save_inserted_wooden_siding_wall(socket, socket.assigns.action, inserted_wooden_siding_wall_params)
  end

  defp save_inserted_wooden_siding_wall(socket, :edit, inserted_wooden_siding_wall_params) do
    case Elements.update_inserted_wooden_siding_wall(socket.assigns.inserted_wooden_siding_wall, inserted_wooden_siding_wall_params) do
      {:ok, _inserted_wooden_siding_wall} ->
        {:noreply,
         socket
         |> put_flash(:info, "Inserted wooden siding wall updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_inserted_wooden_siding_wall(socket, :new, inserted_wooden_siding_wall_params) do
    case Elements.create_inserted_wooden_siding_wall(inserted_wooden_siding_wall_params) do
      {:ok, _inserted_wooden_siding_wall} ->
        {:noreply,
         socket
         |> put_flash(:info, "Inserted wooden siding wall created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
