defmodule Myproject.EventsTest do
  use Myproject.DataCase

  alias Myproject.Events

  describe "events" do
    alias Myproject.Events.Event

    import Myproject.EventsFixtures

    @invalid_attrs %{name: nil, plan: nil, billing_interval: nil}

    test "list_events/0 returns all events" do
      event = event_fixture()
      assert Events.list_events() == [event]
    end

    test "get_event!/1 returns the event with given id" do
      event = event_fixture()
      assert Events.get_event!(event.id) == event
    end

    test "create_event/1 with valid data creates a event" do
      valid_attrs = %{name: "some name", plan: "some plan", billing_interval: "some billing_interval"}

      assert {:ok, %Event{} = event} = Events.create_event(valid_attrs)
      assert event.name == "some name"
      assert event.plan == "some plan"
      assert event.billing_interval == "some billing_interval"
    end

    test "create_event/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_event(@invalid_attrs)
    end

    test "update_event/2 with valid data updates the event" do
      event = event_fixture()
      update_attrs = %{name: "some updated name", plan: "some updated plan", billing_interval: "some updated billing_interval"}

      assert {:ok, %Event{} = event} = Events.update_event(event, update_attrs)
      assert event.name == "some updated name"
      assert event.plan == "some updated plan"
      assert event.billing_interval == "some updated billing_interval"
    end

    test "update_event/2 with invalid data returns error changeset" do
      event = event_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_event(event, @invalid_attrs)
      assert event == Events.get_event!(event.id)
    end

    test "delete_event/1 deletes the event" do
      event = event_fixture()
      assert {:ok, %Event{}} = Events.delete_event(event)
      assert_raise Ecto.NoResultsError, fn -> Events.get_event!(event.id) end
    end

    test "change_event/1 returns a event changeset" do
      event = event_fixture()
      assert %Ecto.Changeset{} = Events.change_event(event)
    end
  end

  describe "eventusers" do
    alias Myproject.Events.EventUser

    import Myproject.EventsFixtures

    @invalid_attrs %{}

    test "list_eventusers/0 returns all eventusers" do
      event_user = event_user_fixture()
      assert Events.list_eventusers() == [event_user]
    end

    test "get_event_user!/1 returns the event_user with given id" do
      event_user = event_user_fixture()
      assert Events.get_event_user!(event_user.id) == event_user
    end

    test "create_event_user/1 with valid data creates a event_user" do
      valid_attrs = %{}

      assert {:ok, %EventUser{} = event_user} = Events.create_event_user(valid_attrs)
    end

    test "create_event_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_event_user(@invalid_attrs)
    end

    test "update_event_user/2 with valid data updates the event_user" do
      event_user = event_user_fixture()
      update_attrs = %{}

      assert {:ok, %EventUser{} = event_user} = Events.update_event_user(event_user, update_attrs)
    end

    test "update_event_user/2 with invalid data returns error changeset" do
      event_user = event_user_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_event_user(event_user, @invalid_attrs)
      assert event_user == Events.get_event_user!(event_user.id)
    end

    test "delete_event_user/1 deletes the event_user" do
      event_user = event_user_fixture()
      assert {:ok, %EventUser{}} = Events.delete_event_user(event_user)
      assert_raise Ecto.NoResultsError, fn -> Events.get_event_user!(event_user.id) end
    end

    test "change_event_user/1 returns a event_user changeset" do
      event_user = event_user_fixture()
      assert %Ecto.Changeset{} = Events.change_event_user(event_user)
    end
  end
end
