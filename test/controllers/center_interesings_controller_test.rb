require 'test_helper'

class CenterInteresingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get center_interesings_index_url
    assert_response :success
  end

end
