defmodule Struct.Repo.Migrations.CreateInsertedWoodenSidingWalls do
  use Ecto.Migration

  def change do
    create table(:inserted_wooden_siding_walls) do
      add :name, :text
      add :single_shear_connecter_rigidity, :float
      add :number_of_shear_connecters_on_line, :integer
      add :siding_width, :float
      add :frame_inner_height, :float
      add :frame_inner_width, :float
      add :friction_coefficient_between_sidings, :float
      add :shear_modulus_of_sidings, :float
      add :siding_thickness, :float
      add :fiber_direction_elasticity_of_sidings, :float
      add :siding_elasticity_ratio, :float
      add :fiber_orthogonal_direction_elasticity_of_columns, :float
      add :fiber_orthogonal_direction_elasticity_of_beams, :float
      add :column_depth, :float
      add :beam_height, :float
      add :column_width, :float
      add :beam_width, :float
      add :substitution_coefficient_of_columns, :float
      add :substitution_coefficient_of_beams, :float
      add :single_shear_connecter_yield_resistance, :float
      add :fiber_direction_compressive_strength_of_sidings, :float
      add :fiber_orthogonal_direction_compressive_strength_of_sidings, :float
      add :yield_judgement_ratio, :float

      timestamps()
    end

  end
end
