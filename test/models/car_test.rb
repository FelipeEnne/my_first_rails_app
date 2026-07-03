require "test_helper"

class CarTest < ActiveSupport::TestCase
  test "should be valid with attributes" do
    car = Car.new(make: "Toyota", model: "Corolla", year: 2024)
    assert car.valid?
  end
end
