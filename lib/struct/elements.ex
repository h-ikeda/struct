defmodule Struct.Elements do
  @moduledoc """
  The Elements context.
  """

  import Ecto.Query, warn: false
  alias Struct.Repo

  alias Struct.Elements.InsertedWoodenSidingWall

  @doc """
  Returns the list of inserted_wooden_siding_walls.

  ## Examples

      iex> list_inserted_wooden_siding_walls()
      [%InsertedWoodenSidingWall{}, ...]

  """
  def list_inserted_wooden_siding_walls do
    Repo.all(InsertedWoodenSidingWall)
  end

  @doc """
  Gets a single inserted_wooden_siding_wall.

  Raises `Ecto.NoResultsError` if the Inserted wooden siding wall does not exist.

  ## Examples

      iex> get_inserted_wooden_siding_wall!(123)
      %InsertedWoodenSidingWall{}

      iex> get_inserted_wooden_siding_wall!(456)
      ** (Ecto.NoResultsError)

  """
  def get_inserted_wooden_siding_wall!(id), do: Repo.get!(InsertedWoodenSidingWall, id)

  @doc """
  Creates a inserted_wooden_siding_wall.

  ## Examples

      iex> create_inserted_wooden_siding_wall(%{field: value})
      {:ok, %InsertedWoodenSidingWall{}}

      iex> create_inserted_wooden_siding_wall(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_inserted_wooden_siding_wall(attrs \\ %{}) do
    %InsertedWoodenSidingWall{}
    |> InsertedWoodenSidingWall.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a inserted_wooden_siding_wall.

  ## Examples

      iex> update_inserted_wooden_siding_wall(inserted_wooden_siding_wall, %{field: new_value})
      {:ok, %InsertedWoodenSidingWall{}}

      iex> update_inserted_wooden_siding_wall(inserted_wooden_siding_wall, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_inserted_wooden_siding_wall(%InsertedWoodenSidingWall{} = inserted_wooden_siding_wall, attrs) do
    inserted_wooden_siding_wall
    |> InsertedWoodenSidingWall.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a inserted_wooden_siding_wall.

  ## Examples

      iex> delete_inserted_wooden_siding_wall(inserted_wooden_siding_wall)
      {:ok, %InsertedWoodenSidingWall{}}

      iex> delete_inserted_wooden_siding_wall(inserted_wooden_siding_wall)
      {:error, %Ecto.Changeset{}}

  """
  def delete_inserted_wooden_siding_wall(%InsertedWoodenSidingWall{} = inserted_wooden_siding_wall) do
    Repo.delete(inserted_wooden_siding_wall)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking inserted_wooden_siding_wall changes.

  ## Examples

      iex> change_inserted_wooden_siding_wall(inserted_wooden_siding_wall)
      %Ecto.Changeset{data: %InsertedWoodenSidingWall{}}

  """
  def change_inserted_wooden_siding_wall(%InsertedWoodenSidingWall{} = inserted_wooden_siding_wall, attrs \\ %{}) do
    InsertedWoodenSidingWall.changeset(inserted_wooden_siding_wall, attrs)
  end
end
