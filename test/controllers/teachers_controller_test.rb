require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get assign_students" do
    get :assign_students
    assert_response :success
  end

end
