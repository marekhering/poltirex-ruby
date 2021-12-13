require 'test_helper'

class StretchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stretch = stretches(:one)
  end

  test "should get index" do
    get stretches_url
    assert_response :success
  end

  test "should get new" do
    get new_stretch_url
    assert_response :success
  end

  test "should create stretch" do
    assert_difference('Stretch.count') do
      post stretches_url, params: { stretch: { end_datetime: @stretch.end_datetime, end_place_lat: @stretch.end_place_lat, end_place_lon: @stretch.end_place_lon, route_id: @stretch.route_id, start_datetime: @stretch.start_datetime, start_place_lat: @stretch.start_place_lat, start_place_lon: @stretch.start_place_lon } }
    end

    assert_redirected_to stretch_url(Stretch.last)
  end

  test "should show stretch" do
    get stretch_url(@stretch)
    assert_response :success
  end

  test "should get edit" do
    get edit_stretch_url(@stretch)
    assert_response :success
  end

  test "should update stretch" do
    patch stretch_url(@stretch), params: { stretch: { end_datetime: @stretch.end_datetime, end_place_lat: @stretch.end_place_lat, end_place_lon: @stretch.end_place_lon, route_id: @stretch.route_id, start_datetime: @stretch.start_datetime, start_place_lat: @stretch.start_place_lat, start_place_lon: @stretch.start_place_lon } }
    assert_redirected_to stretch_url(@stretch)
  end

  test "should destroy stretch" do
    assert_difference('Stretch.count', -1) do
      delete stretch_url(@stretch)
    end

    assert_redirected_to stretches_url
  end
end
