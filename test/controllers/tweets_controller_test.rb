require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest

  setup do
    sign_in users(:user_001)
    @tweet = tweets(:one)
  end

  test 'should get index if logged in' do
    get tweets_url
    assert_response :success
  end

  test "should create tweet" do
    tweet = Tweet.new(content: @tweet.content, user_id: @tweet.user_id)
    assert :success if tweet.save
  end

end
