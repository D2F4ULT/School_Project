require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get LogInMenu" do
    get home_LogInMenu_url
    assert_response :success
  end
end
