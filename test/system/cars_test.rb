require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "should create car" do
    visit cars_url
    click_on "New Car"

    fill_in "Make", with: @car.make
    fill_in "Model", with: @car.model
    fill_in "Year", with: @car.year
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "should update Car" do
    visit car_url(@car)
    click_on "Edit", match: :first

    fill_in "Make", with: @car.make
    fill_in "Model", with: @car.model
    fill_in "Year", with: @car.year
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "should destroy Car" do
    visit cars_url
    accept_confirm { click_on "Destroy", match: :first }

    assert_text "Car was successfully destroyed"
  end
end
