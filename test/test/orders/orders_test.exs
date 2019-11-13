defmodule Test.OrdersTest do
  use Test.DataCase

  alias Test.Orders

  describe "orders" do
    alias Test.Orders.Order

    @valid_attrs %{adress: "some adress", courier: "some courier", delivered: "some delivered", name: "some name", pickup: ~N[2010-04-17 14:00:00.000000]}
    @update_attrs %{adress: "some updated adress", courier: "some updated courier", delivered: "some updated delivered", name: "some updated name", pickup: ~N[2011-05-18 15:01:01.000000]}
    @invalid_attrs %{adress: nil, courier: nil, delivered: nil, name: nil, pickup: nil}

    def order_fixture(attrs \\ %{}) do
      {:ok, order} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Orders.create_order()

      order
    end

    test "list_orders/0 returns all orders" do
      order = order_fixture()
      assert Orders.list_orders() == [order]
    end

    test "get_order!/1 returns the order with given id" do
      order = order_fixture()
      assert Orders.get_order!(order.id) == order
    end

    test "create_order/1 with valid data creates a order" do
      assert {:ok, %Order{} = order} = Orders.create_order(@valid_attrs)
      assert order.adress == "some adress"
      assert order.courier == "some courier"
      assert order.delivered == "some delivered"
      assert order.name == "some name"
      assert order.pickup == ~N[2010-04-17 14:00:00.000000]
    end

    test "create_order/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Orders.create_order(@invalid_attrs)
    end

    test "update_order/2 with valid data updates the order" do
      order = order_fixture()
      assert {:ok, order} = Orders.update_order(order, @update_attrs)
      assert %Order{} = order
      assert order.adress == "some updated adress"
      assert order.courier == "some updated courier"
      assert order.delivered == "some updated delivered"
      assert order.name == "some updated name"
      assert order.pickup == ~N[2011-05-18 15:01:01.000000]
    end

    test "update_order/2 with invalid data returns error changeset" do
      order = order_fixture()
      assert {:error, %Ecto.Changeset{}} = Orders.update_order(order, @invalid_attrs)
      assert order == Orders.get_order!(order.id)
    end

    test "delete_order/1 deletes the order" do
      order = order_fixture()
      assert {:ok, %Order{}} = Orders.delete_order(order)
      assert_raise Ecto.NoResultsError, fn -> Orders.get_order!(order.id) end
    end

    test "change_order/1 returns a order changeset" do
      order = order_fixture()
      assert %Ecto.Changeset{} = Orders.change_order(order)
    end
  end
end
