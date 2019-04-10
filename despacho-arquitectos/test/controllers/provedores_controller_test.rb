require 'test_helper'

class ProvedoresControllerTest < ActionDispatch::IntegrationTest
  test "should get provedores" do
    get provedores_provedores_url
    assert_response :success
  end

end
