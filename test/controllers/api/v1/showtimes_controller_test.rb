require "test_helper"

class Api::V1::ShowtimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_showtimes_index_url
    assert_response :success
  end
end
