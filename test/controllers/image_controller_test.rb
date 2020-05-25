require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get image_upload_url
    assert_response :success
  end

  test "should get delete" do
    get image_delete_url
    assert_response :success
  end

end
