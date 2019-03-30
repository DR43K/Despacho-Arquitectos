require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get n_product" do
    get welcome_n_product_url
    assert_response :success
  end

end
