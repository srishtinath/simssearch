require 'test_helper'

class RoomFurnituresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get room_furnitures_new_url
    assert_response :success
  end

  test "should get edit" do
    get room_furnitures_edit_url
    assert_response :success
  end

end
