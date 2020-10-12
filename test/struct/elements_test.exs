defmodule Struct.ElementsTest do
  use Struct.DataCase

  alias Struct.Elements

  describe "inserted_wooden_siding_walls" do
    alias Struct.Elements.InsertedWoodenSidingWall

    @valid_attrs %{beam_height: 120.5, beam_width: 120.5, column_depth: 120.5, column_width: 120.5, fiber_direction_compressive_strength_of_sidings: 120.5, fiber_direction_elasticity_of_sidings: 120.5, fiber_orthogonal_direction_compressive_strength_of_sidings: 120.5, fiber_orthogonal_direction_elasticity_of_beams: 120.5, fiber_orthogonal_direction_elasticity_of_columns: 120.5, frame_inner_height: 120.5, frame_inner_width: 120.5, friction_coefficient_between_sidings: 120.5, name: "some name", number_of_shear_connecters_on_line: 42, shear_modulus_of_sidings: 120.5, siding_elasticity_ratio: 120.5, siding_thickness: 120.5, siding_width: 120.5, single_shear_connecter_rigidity: 120.5, single_shear_connecter_yield_resistance: 120.5, substitution_coefficient_of_beams: 120.5, substitution_coefficient_of_columns: 120.5, yield_judgement_ratio: 120.5}
    @update_attrs %{beam_height: 456.7, beam_width: 456.7, column_depth: 456.7, column_width: 456.7, fiber_direction_compressive_strength_of_sidings: 456.7, fiber_direction_elasticity_of_sidings: 456.7, fiber_orthogonal_direction_compressive_strength_of_sidings: 456.7, fiber_orthogonal_direction_elasticity_of_beams: 456.7, fiber_orthogonal_direction_elasticity_of_columns: 456.7, frame_inner_height: 456.7, frame_inner_width: 456.7, friction_coefficient_between_sidings: 456.7, name: "some updated name", number_of_shear_connecters_on_line: 43, shear_modulus_of_sidings: 456.7, siding_elasticity_ratio: 456.7, siding_thickness: 456.7, siding_width: 456.7, single_shear_connecter_rigidity: 456.7, single_shear_connecter_yield_resistance: 456.7, substitution_coefficient_of_beams: 456.7, substitution_coefficient_of_columns: 456.7, yield_judgement_ratio: 456.7}
    @invalid_attrs %{beam_height: nil, beam_width: nil, column_depth: nil, column_width: nil, fiber_direction_compressive_strength_of_sidings: nil, fiber_direction_elasticity_of_sidings: nil, fiber_orthogonal_direction_compressive_strength_of_sidings: nil, fiber_orthogonal_direction_elasticity_of_beams: nil, fiber_orthogonal_direction_elasticity_of_columns: nil, frame_inner_height: nil, frame_inner_width: nil, friction_coefficient_between_sidings: nil, name: nil, number_of_shear_connecters_on_line: nil, shear_modulus_of_sidings: nil, siding_elasticity_ratio: nil, siding_thickness: nil, siding_width: nil, single_shear_connecter_rigidity: nil, single_shear_connecter_yield_resistance: nil, substitution_coefficient_of_beams: nil, substitution_coefficient_of_columns: nil, yield_judgement_ratio: nil}

    def inserted_wooden_siding_wall_fixture(attrs \\ %{}) do
      {:ok, inserted_wooden_siding_wall} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Elements.create_inserted_wooden_siding_wall()

      inserted_wooden_siding_wall
    end

    test "list_inserted_wooden_siding_walls/0 returns all inserted_wooden_siding_walls" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert Elements.list_inserted_wooden_siding_walls() == [inserted_wooden_siding_wall]
    end

    test "get_inserted_wooden_siding_wall!/1 returns the inserted_wooden_siding_wall with given id" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert Elements.get_inserted_wooden_siding_wall!(inserted_wooden_siding_wall.id) == inserted_wooden_siding_wall
    end

    test "create_inserted_wooden_siding_wall/1 with valid data creates a inserted_wooden_siding_wall" do
      assert {:ok, %InsertedWoodenSidingWall{} = inserted_wooden_siding_wall} = Elements.create_inserted_wooden_siding_wall(@valid_attrs)
      assert inserted_wooden_siding_wall.beam_height == 120.5
      assert inserted_wooden_siding_wall.beam_width == 120.5
      assert inserted_wooden_siding_wall.column_depth == 120.5
      assert inserted_wooden_siding_wall.column_width == 120.5
      assert inserted_wooden_siding_wall.fiber_direction_compressive_strength_of_sidings == 120.5
      assert inserted_wooden_siding_wall.fiber_direction_elasticity_of_sidings == 120.5
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_compressive_strength_of_sidings == 120.5
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_elasticity_of_beams == 120.5
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_elasticity_of_columns == 120.5
      assert inserted_wooden_siding_wall.frame_inner_height == 120.5
      assert inserted_wooden_siding_wall.frame_inner_width == 120.5
      assert inserted_wooden_siding_wall.friction_coefficient_between_sidings == 120.5
      assert inserted_wooden_siding_wall.name == "some name"
      assert inserted_wooden_siding_wall.number_of_shear_connecters_on_line == 42
      assert inserted_wooden_siding_wall.shear_modulus_of_sidings == 120.5
      assert inserted_wooden_siding_wall.siding_elasticity_ratio == 120.5
      assert inserted_wooden_siding_wall.siding_thickness == 120.5
      assert inserted_wooden_siding_wall.siding_width == 120.5
      assert inserted_wooden_siding_wall.single_shear_connecter_rigidity == 120.5
      assert inserted_wooden_siding_wall.single_shear_connecter_yield_resistance == 120.5
      assert inserted_wooden_siding_wall.substitution_coefficient_of_beams == 120.5
      assert inserted_wooden_siding_wall.substitution_coefficient_of_columns == 120.5
      assert inserted_wooden_siding_wall.yield_judgement_ratio == 120.5
    end

    test "create_inserted_wooden_siding_wall/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Elements.create_inserted_wooden_siding_wall(@invalid_attrs)
    end

    test "update_inserted_wooden_siding_wall/2 with valid data updates the inserted_wooden_siding_wall" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert {:ok, %InsertedWoodenSidingWall{} = inserted_wooden_siding_wall} = Elements.update_inserted_wooden_siding_wall(inserted_wooden_siding_wall, @update_attrs)
      assert inserted_wooden_siding_wall.beam_height == 456.7
      assert inserted_wooden_siding_wall.beam_width == 456.7
      assert inserted_wooden_siding_wall.column_depth == 456.7
      assert inserted_wooden_siding_wall.column_width == 456.7
      assert inserted_wooden_siding_wall.fiber_direction_compressive_strength_of_sidings == 456.7
      assert inserted_wooden_siding_wall.fiber_direction_elasticity_of_sidings == 456.7
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_compressive_strength_of_sidings == 456.7
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_elasticity_of_beams == 456.7
      assert inserted_wooden_siding_wall.fiber_orthogonal_direction_elasticity_of_columns == 456.7
      assert inserted_wooden_siding_wall.frame_inner_height == 456.7
      assert inserted_wooden_siding_wall.frame_inner_width == 456.7
      assert inserted_wooden_siding_wall.friction_coefficient_between_sidings == 456.7
      assert inserted_wooden_siding_wall.name == "some updated name"
      assert inserted_wooden_siding_wall.number_of_shear_connecters_on_line == 43
      assert inserted_wooden_siding_wall.shear_modulus_of_sidings == 456.7
      assert inserted_wooden_siding_wall.siding_elasticity_ratio == 456.7
      assert inserted_wooden_siding_wall.siding_thickness == 456.7
      assert inserted_wooden_siding_wall.siding_width == 456.7
      assert inserted_wooden_siding_wall.single_shear_connecter_rigidity == 456.7
      assert inserted_wooden_siding_wall.single_shear_connecter_yield_resistance == 456.7
      assert inserted_wooden_siding_wall.substitution_coefficient_of_beams == 456.7
      assert inserted_wooden_siding_wall.substitution_coefficient_of_columns == 456.7
      assert inserted_wooden_siding_wall.yield_judgement_ratio == 456.7
    end

    test "update_inserted_wooden_siding_wall/2 with invalid data returns error changeset" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert {:error, %Ecto.Changeset{}} = Elements.update_inserted_wooden_siding_wall(inserted_wooden_siding_wall, @invalid_attrs)
      assert inserted_wooden_siding_wall == Elements.get_inserted_wooden_siding_wall!(inserted_wooden_siding_wall.id)
    end

    test "delete_inserted_wooden_siding_wall/1 deletes the inserted_wooden_siding_wall" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert {:ok, %InsertedWoodenSidingWall{}} = Elements.delete_inserted_wooden_siding_wall(inserted_wooden_siding_wall)
      assert_raise Ecto.NoResultsError, fn -> Elements.get_inserted_wooden_siding_wall!(inserted_wooden_siding_wall.id) end
    end

    test "change_inserted_wooden_siding_wall/1 returns a inserted_wooden_siding_wall changeset" do
      inserted_wooden_siding_wall = inserted_wooden_siding_wall_fixture()
      assert %Ecto.Changeset{} = Elements.change_inserted_wooden_siding_wall(inserted_wooden_siding_wall)
    end
  end
end
