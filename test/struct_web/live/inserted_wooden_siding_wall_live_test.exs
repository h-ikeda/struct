defmodule StructWeb.InsertedWoodenSidingWallLiveTest do
  use StructWeb.ConnCase

  import Phoenix.LiveViewTest

  alias Struct.Elements

  @create_attrs %{beam_height: 120.5, beam_width: 120.5, column_depth: 120.5, column_width: 120.5, fiber_direction_compressive_strength_of_sidings: 120.5, fiber_direction_elasticity_of_sidings: 120.5, fiber_orthogonal_direction_compressive_strength_of_sidings: 120.5, fiber_orthogonal_direction_elasticity_of_beams: 120.5, fiber_orthogonal_direction_elasticity_of_columns: 120.5, frame_inner_height: 120.5, frame_inner_width: 120.5, friction_coefficient_between_sidings: 120.5, name: "some name", number_of_shear_connecters_on_line: 42, shear_modulus_of_sidings: 120.5, siding_elasticity_ratio: 120.5, siding_thickness: 120.5, siding_width: 120.5, single_shear_connecter_rigidity: 120.5, single_shear_connecter_yield_resistance: 120.5, substitution_coefficient_of_beams: 120.5, substitution_coefficient_of_columns: 120.5, yield_judgement_ratio: 120.5}
  @update_attrs %{beam_height: 456.7, beam_width: 456.7, column_depth: 456.7, column_width: 456.7, fiber_direction_compressive_strength_of_sidings: 456.7, fiber_direction_elasticity_of_sidings: 456.7, fiber_orthogonal_direction_compressive_strength_of_sidings: 456.7, fiber_orthogonal_direction_elasticity_of_beams: 456.7, fiber_orthogonal_direction_elasticity_of_columns: 456.7, frame_inner_height: 456.7, frame_inner_width: 456.7, friction_coefficient_between_sidings: 456.7, name: "some updated name", number_of_shear_connecters_on_line: 43, shear_modulus_of_sidings: 456.7, siding_elasticity_ratio: 456.7, siding_thickness: 456.7, siding_width: 456.7, single_shear_connecter_rigidity: 456.7, single_shear_connecter_yield_resistance: 456.7, substitution_coefficient_of_beams: 456.7, substitution_coefficient_of_columns: 456.7, yield_judgement_ratio: 456.7}
  @invalid_attrs %{beam_height: nil, beam_width: nil, column_depth: nil, column_width: nil, fiber_direction_compressive_strength_of_sidings: nil, fiber_direction_elasticity_of_sidings: nil, fiber_orthogonal_direction_compressive_strength_of_sidings: nil, fiber_orthogonal_direction_elasticity_of_beams: nil, fiber_orthogonal_direction_elasticity_of_columns: nil, frame_inner_height: nil, frame_inner_width: nil, friction_coefficient_between_sidings: nil, name: nil, number_of_shear_connecters_on_line: nil, shear_modulus_of_sidings: nil, siding_elasticity_ratio: nil, siding_thickness: nil, siding_width: nil, single_shear_connecter_rigidity: nil, single_shear_connecter_yield_resistance: nil, substitution_coefficient_of_beams: nil, substitution_coefficient_of_columns: nil, yield_judgement_ratio: nil}

  defp fixture(:inserted_wooden_siding_wall) do
    {:ok, inserted_wooden_siding_wall} = Elements.create_inserted_wooden_siding_wall(@create_attrs)
    inserted_wooden_siding_wall
  end

  defp create_inserted_wooden_siding_wall(_) do
    inserted_wooden_siding_wall = fixture(:inserted_wooden_siding_wall)
    %{inserted_wooden_siding_wall: inserted_wooden_siding_wall}
  end

  describe "Index" do
    setup [:create_inserted_wooden_siding_wall]

    test "lists all inserted_wooden_siding_walls", %{conn: conn, inserted_wooden_siding_wall: inserted_wooden_siding_wall} do
      {:ok, _index_live, html} = live(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert html =~ "Listing Inserted wooden siding walls"
      assert html =~ inserted_wooden_siding_wall.name
    end

    test "saves new inserted_wooden_siding_wall", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert index_live |> element("a", "New Inserted wooden siding wall") |> render_click() =~
               "New Inserted wooden siding wall"

      assert_patch(index_live, Routes.inserted_wooden_siding_wall_index_path(conn, :new))

      assert index_live
             |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @create_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert html =~ "Inserted wooden siding wall created successfully"
      assert html =~ "some name"
    end

    test "updates inserted_wooden_siding_wall in listing", %{conn: conn, inserted_wooden_siding_wall: inserted_wooden_siding_wall} do
      {:ok, index_live, _html} = live(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert index_live |> element("#inserted_wooden_siding_wall-#{inserted_wooden_siding_wall.id} a", "Edit") |> render_click() =~
               "Edit Inserted wooden siding wall"

      assert_patch(index_live, Routes.inserted_wooden_siding_wall_index_path(conn, :edit, inserted_wooden_siding_wall))

      assert index_live
             |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert html =~ "Inserted wooden siding wall updated successfully"
      assert html =~ "some updated name"
    end

    test "deletes inserted_wooden_siding_wall in listing", %{conn: conn, inserted_wooden_siding_wall: inserted_wooden_siding_wall} do
      {:ok, index_live, _html} = live(conn, Routes.inserted_wooden_siding_wall_index_path(conn, :index))

      assert index_live |> element("#inserted_wooden_siding_wall-#{inserted_wooden_siding_wall.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#inserted_wooden_siding_wall-#{inserted_wooden_siding_wall.id}")
    end
  end

  describe "Show" do
    setup [:create_inserted_wooden_siding_wall]

    test "displays inserted_wooden_siding_wall", %{conn: conn, inserted_wooden_siding_wall: inserted_wooden_siding_wall} do
      {:ok, _show_live, html} = live(conn, Routes.inserted_wooden_siding_wall_show_path(conn, :show, inserted_wooden_siding_wall))

      assert html =~ "Show Inserted wooden siding wall"
      assert html =~ inserted_wooden_siding_wall.name
    end

    test "updates inserted_wooden_siding_wall within modal", %{conn: conn, inserted_wooden_siding_wall: inserted_wooden_siding_wall} do
      {:ok, show_live, _html} = live(conn, Routes.inserted_wooden_siding_wall_show_path(conn, :show, inserted_wooden_siding_wall))

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Inserted wooden siding wall"

      assert_patch(show_live, Routes.inserted_wooden_siding_wall_show_path(conn, :edit, inserted_wooden_siding_wall))

      assert show_live
             |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        show_live
        |> form("#inserted_wooden_siding_wall-form", inserted_wooden_siding_wall: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.inserted_wooden_siding_wall_show_path(conn, :show, inserted_wooden_siding_wall))

      assert html =~ "Inserted wooden siding wall updated successfully"
      assert html =~ "some updated name"
    end
  end
end
