require "test_helper"

class Api::V1::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_reservations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_reservations_destroy_url
    assert_response :success
  end
end
