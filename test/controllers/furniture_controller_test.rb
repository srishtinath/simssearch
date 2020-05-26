require 'test_helper'

class FurnitureControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get furniture_show_url
    assert_response :success
  end

  test "should get index" do
    get furniture_index_url
    assert_response :success
  end

  test "should get new" do
    get furniture_new_url
    assert_response :success
  end

  test "should get edit" do
    get furniture_edit_url
    assert_response :success
  end

end
