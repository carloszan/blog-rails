require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = posts(:one)
    @user = authors(:carlos)
  end

  test "should be logged to create posts" do
    assert_no_difference('Post.count') do
      post :create, post: {title: @post.title, text: @post.text}
    end
  end

  #test "should create posts when logged" do
  #  log_in(@user)
  #  assert is_logged_in?, "not logged"
  #  assert_difference('Post.count') do
  #    post :create, post: {title: @title, text: @text}
  #  end
  # end
end
