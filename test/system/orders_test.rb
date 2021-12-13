require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Delivery time", with: @order.delivery_time
    fill_in "Departure place lat", with: @order.departure_place_lat
    fill_in "Departure place lon", with: @order.departure_place_lon
    fill_in "Destination place lat", with: @order.destination_place_lat
    fill_in "Destination place lon", with: @order.destination_place_lon
    fill_in "Payload weight", with: @order.payload_weight
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Delivery time", with: @order.delivery_time
    fill_in "Departure place lat", with: @order.departure_place_lat
    fill_in "Departure place lon", with: @order.departure_place_lon
    fill_in "Destination place lat", with: @order.destination_place_lat
    fill_in "Destination place lon", with: @order.destination_place_lon
    fill_in "Payload weight", with: @order.payload_weight
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
