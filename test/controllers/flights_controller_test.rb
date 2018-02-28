require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get flight" do
    get flights_flight_url
    assert_response :success
  end

end
