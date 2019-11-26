require 'test_helper'

class BookingItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get booking_items_index_url
    assert_response :success
  end

  test "should get create" do
    get booking_items_create_url
    assert_response :success
  end

  test "should get new" do
    get booking_items_new_url
    assert_response :success
  end

  test "should get delete" do
    get booking_items_delete_url
    assert_response :success
  end

  test "should get update" do
    get booking_items_update_url
    assert_response :success
  end

end
