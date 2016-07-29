require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get site_new_url
    assert_response :success
  end

  test "should get create" do
    get site_create_url
    assert_response :success
  end

end
