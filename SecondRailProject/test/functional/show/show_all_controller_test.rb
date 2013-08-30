require 'test_helper'

class Show::ShowAllControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
