require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get trabble" do
    get :trabble
    assert_response :success
  end

end
