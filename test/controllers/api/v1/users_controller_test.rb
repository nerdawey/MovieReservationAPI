require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_users_create_url
    assert_response :success
  end

  test "should get Api::V1::Sessions" do
    get api_v1_users_Api::V1::Sessions_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_users_create_url
    assert_response :success
  end

  test "should get Api::V1::Movies" do
    get api_v1_users_Api::V1::Movies_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_users_index_url
    assert_response :success
  end
  test "should get show" do
    get api_v1_users_show_url
    assert_response :success
  end

  test "should get Api::V1::Showtimes" do
    get api_v1_users_Api::V1::Showtimes_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_users_index_url
    assert_response :success
  end
  test "should get Api::V1::Reservations" do
    get api_v1_users_Api::V1::Reservations_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_users_destroy_url
    assert_response :success
  end

  test "should get Api::V1::Admin::Movies" do
    get api_v1_users_Api::V1::Admin::Movies_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_users_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_users_destroy_url
    assert_response :success
  end

  test "should get Api::V1::Admin::Reservations" do
    get api_v1_users_Api::V1::Admin::Reservations_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_users_index_url
    assert_response :success
  end
end
