require 'test_helper'

class NuevoMaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get nuevo_material" do
    get nuevo_material_nuevo_material_url
    assert_response :success
  end

end
