require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get game" do
    get :game
    assert_response :success
  end

end
