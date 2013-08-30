require 'test_helper'

class AuthorControllerTest < ActionController::TestCase
  test "should get addAuthor" do
    get :addAuthor
    assert_response :success
  end

end
