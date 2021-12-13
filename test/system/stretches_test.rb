require "application_system_test_case"

class StretchesTest < ApplicationSystemTestCase
  setup do
    @stretch = stretches(:one)
  end

  test "visiting the index" do
    visit stretches_url
    assert_selector "h1", text: "Stretches"
  end

  test "creating a Stretch" do
    visit stretches_url
    click_on "New Stretch"

    fill_in "End datetime", with: @stretch.end_datetime
    fill_in "End place lat", with: @stretch.end_place_lat
    fill_in "End place lon", with: @stretch.end_place_lon
    fill_in "Route", with: @stretch.route_id
    fill_in "Start datetime", with: @stretch.start_datetime
    fill_in "Start place lat", with: @stretch.start_place_lat
    fill_in "Start place lon", with: @stretch.start_place_lon
    click_on "Create Stretch"

    assert_text "Stretch was successfully created"
    click_on "Back"
  end

  test "updating a Stretch" do
    visit stretches_url
    click_on "Edit", match: :first

    fill_in "End datetime", with: @stretch.end_datetime
    fill_in "End place lat", with: @stretch.end_place_lat
    fill_in "End place lon", with: @stretch.end_place_lon
    fill_in "Route", with: @stretch.route_id
    fill_in "Start datetime", with: @stretch.start_datetime
    fill_in "Start place lat", with: @stretch.start_place_lat
    fill_in "Start place lon", with: @stretch.start_place_lon
    click_on "Update Stretch"

    assert_text "Stretch was successfully updated"
    click_on "Back"
  end

  test "destroying a Stretch" do
    visit stretches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stretch was successfully destroyed"
  end
end
