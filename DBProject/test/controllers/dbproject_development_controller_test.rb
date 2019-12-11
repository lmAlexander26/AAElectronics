require 'test_helper'

class DbprojectDevelopmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dbproject_development_index_url
    assert_response :success
  end

end
