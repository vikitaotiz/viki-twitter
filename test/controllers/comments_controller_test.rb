require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:user_001)
    @comment = comments(:one)
  end

  test 'should create comment' do
    @comment = Comment.new(tweet_id: @comment.tweet_id, content: @comment.content, user_id: @comment.user_id)
    assert :success if @comment.save
  end
end
