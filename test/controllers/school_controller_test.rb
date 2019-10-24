require 'test_helper'

class SchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_index_url
    assert_response :success
  end

end
