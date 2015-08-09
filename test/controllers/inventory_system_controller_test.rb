require 'test_helper'

class InventorySystemControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
