require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get applications_create_url
    assert_response :success
  end

end
