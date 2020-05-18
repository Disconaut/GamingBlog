require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get posts" do
    get blog_posts_url
    assert_response :success
  end

  test "should get post" do
    get blog_post_url
    assert_response :success
  end

end
