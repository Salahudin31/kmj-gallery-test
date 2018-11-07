require 'test_helper'

class SupirControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supir_index_url
    assert_response :success
  end

end
