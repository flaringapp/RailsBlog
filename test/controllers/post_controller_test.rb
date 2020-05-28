require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get post_post_url
    assert_response :success
  end

end
