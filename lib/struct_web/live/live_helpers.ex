defmodule StructWeb.LiveHelpers do
  import Phoenix.LiveView.Helpers

  @doc """
  Renders a component inside the `StructWeb.ModalComponent` component.

  The rendered modal receives a `:return_to` option to properly update
  the URL when the modal is closed.

  ## Examples

      <%= live_modal @socket, StructWeb.InsertedWoodenSidingWallLive.FormComponent,
        id: @inserted_wooden_siding_wall.id || :new,
        action: @live_action,
        inserted_wooden_siding_wall: @inserted_wooden_siding_wall,
        return_to: Routes.inserted_wooden_siding_wall_index_path(@socket, :index) %>
  """
  def live_modal(socket, component, opts) do
    path = Keyword.fetch!(opts, :return_to)
    modal_opts = [id: :modal, return_to: path, component: component, opts: opts]
    live_component(socket, StructWeb.ModalComponent, modal_opts)
  end
end
