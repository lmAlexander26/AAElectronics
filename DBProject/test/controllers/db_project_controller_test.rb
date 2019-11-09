require 'test_helper'

class DbProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get db_project_index_url
    assert_response :success
  end

end
