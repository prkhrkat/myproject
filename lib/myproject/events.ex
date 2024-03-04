defmodule Myproject.Events do
  @moduledoc """
  The Events context.
  """

  import Ecto.Query, warn: false
  alias Myproject.Repo

  alias Myproject.Events.Event

  @doc """
  Returns the list of events.

  ## Examples

      iex> list_events()
      [%Event{}, ...]

  """
  def list_events do
    Repo.all(Event)
  end

  @doc """
  Gets a single event.

  Raises `Ecto.NoResultsError` if the Event does not exist.

  ## Examples

      iex> get_event!(123)
      %Event{}

      iex> get_event!(456)
      ** (Ecto.NoResultsError)

  """
  def get_event!(id), do: Repo.get!(Event, id)


  def get_event(params) when is_map(params), do: Repo.get_by(Event, params)

  @doc """
  Creates a event.

  ## Examples

      iex> create_event(%{field: value})
      {:ok, %Event{}}

      iex> create_event(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_event(attrs \\ %{}) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a event.

  ## Examples

      iex> update_event(event, %{field: new_value})
      {:ok, %Event{}}

      iex> update_event(event, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_event(%Event{} = event, attrs) do
    event
    |> Event.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a event.

  ## Examples

      iex> delete_event(event)
      {:ok, %Event{}}

      iex> delete_event(event)
      {:error, %Ecto.Changeset{}}

  """
  def delete_event(%Event{} = event) do
    Repo.delete(event)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking event changes.

  ## Examples

      iex> change_event(event)
      %Ecto.Changeset{data: %Event{}}

  """
  def change_event(%Event{} = event, attrs \\ %{}) do
    Event.changeset(event, attrs)
  end

  alias Myproject.Events.EventUser

  @doc """
  Returns the list of eventusers.

  ## Examples

      iex> list_eventusers()
      [%EventUser{}, ...]

  """
  def list_eventusers do
    Repo.all(EventUser)
  end

  def list_event_users(event_id) do
    Repo.all(from eu in EventUser, where: eu.event_id == ^event_id)
  end

  @doc """
  Gets a single event_user.

  Raises `Ecto.NoResultsError` if the Event user does not exist.

  ## Examples

      iex> get_event_user!(123)
      %EventUser{}

      iex> get_event_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_event_user!(id), do: Repo.get!(EventUser, id)

  @doc """
  Creates a event_user.

  ## Examples

      iex> create_event_user(%{field: value})
      {:ok, %EventUser{}}

      iex> create_event_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_event_user(attrs \\ %{}) do
    %EventUser{}
    |> EventUser.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a event_user.

  ## Examples

      iex> update_event_user(event_user, %{field: new_value})
      {:ok, %EventUser{}}

      iex> update_event_user(event_user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_event_user(%EventUser{} = event_user, attrs) do
    event_user
    |> EventUser.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a event_user.

  ## Examples

      iex> delete_event_user(event_user)
      {:ok, %EventUser{}}

      iex> delete_event_user(event_user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_event_user(%EventUser{} = event_user) do
    Repo.delete(event_user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking event_user changes.

  ## Examples

      iex> change_event_user(event_user)
      %Ecto.Changeset{data: %EventUser{}}

  """
  def change_event_user(%EventUser{} = event_user, attrs \\ %{}) do
    EventUser.changeset(event_user, attrs)
  end
end
