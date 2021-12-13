require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { delivery_time: @order.delivery_time, departure_place_lat: @order.departure_place_lat, departure_place_lon: @order.departure_place_lon, destination_place_lat: @order.destination_place_lat, destination_place_lon: @order.destination_place_lon, payload_weight: @order.payload_weight } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { delivery_time: @order.delivery_time, departure_place_lat: @order.departure_place_lat, departure_place_lon: @order.departure_place_lon, destination_place_lat: @order.destination_place_lat, destination_place_lon: @order.destination_place_lon, payload_weight: @order.payload_weight } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
