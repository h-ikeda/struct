defmodule Struct.Elements.InsertedWoodenSidingWall do
  use Ecto.Schema
  import Ecto.Changeset

  schema "inserted_wooden_siding_walls" do
    field :beam_height, :float
    field :beam_width, :float
    field :column_depth, :float
    field :column_width, :float
    field :fiber_direction_compressive_strength_of_sidings, :float
    field :fiber_direction_elasticity_of_sidings, :float
    field :fiber_orthogonal_direction_compressive_strength_of_sidings, :float
    field :fiber_orthogonal_direction_elasticity_of_beams, :float
    field :fiber_orthogonal_direction_elasticity_of_columns, :float
    field :frame_inner_height, :float
    field :frame_inner_width, :float
    field :friction_coefficient_between_sidings, :float
    field :name, :string
    field :number_of_shear_connecters_on_line, :integer
    field :shear_modulus_of_sidings, :float
    field :siding_elasticity_ratio, :float
    field :siding_thickness, :float
    field :siding_width, :float
    field :single_shear_connecter_rigidity, :float
    field :single_shear_connecter_yield_resistance, :float
    field :substitution_coefficient_of_beams, :float
    field :substitution_coefficient_of_columns, :float
    field :yield_judgement_ratio, :float

    timestamps()
  end

  @doc false
  def changeset(inserted_wooden_siding_wall, attrs) do
    inserted_wooden_siding_wall
    |> cast(attrs, [:name, :single_shear_connecter_rigidity, :number_of_shear_connecters_on_line, :siding_width, :frame_inner_height, :frame_inner_width, :friction_coefficient_between_sidings, :shear_modulus_of_sidings, :siding_thickness, :fiber_direction_elasticity_of_sidings, :siding_elasticity_ratio, :fiber_orthogonal_direction_elasticity_of_columns, :fiber_orthogonal_direction_elasticity_of_beams, :column_depth, :beam_height, :column_width, :beam_width, :substitution_coefficient_of_columns, :substitution_coefficient_of_beams, :single_shear_connecter_yield_resistance, :fiber_direction_compressive_strength_of_sidings, :fiber_orthogonal_direction_compressive_strength_of_sidings, :yield_judgement_ratio])
    |> validate_required([:name, :single_shear_connecter_rigidity, :number_of_shear_connecters_on_line, :siding_width, :frame_inner_height, :frame_inner_width, :friction_coefficient_between_sidings, :shear_modulus_of_sidings, :siding_thickness, :fiber_direction_elasticity_of_sidings, :siding_elasticity_ratio, :fiber_orthogonal_direction_elasticity_of_columns, :fiber_orthogonal_direction_elasticity_of_beams, :column_depth, :beam_height, :column_width, :beam_width, :substitution_coefficient_of_columns, :substitution_coefficient_of_beams, :single_shear_connecter_yield_resistance, :fiber_direction_compressive_strength_of_sidings, :fiber_orthogonal_direction_compressive_strength_of_sidings, :yield_judgement_ratio])
  end
end
