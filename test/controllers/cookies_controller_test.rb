require "test_helper"

class CookiesControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get cookies_accept_url
    assert_response :success
  end

  test "should get reject" do
    get cookies_reject_url
    assert_response :success
  end
end
