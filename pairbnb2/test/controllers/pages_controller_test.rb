require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get hoem" do
    get :hoem
    assert_response :success
  end

end
