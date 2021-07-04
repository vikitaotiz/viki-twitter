require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "redirect when user is not authenticated" do
    get tweets_url
    assert_response :redirect
  end

  test "show tweets index page when user is authenticated" do
    # puts Faker::Internet.user_name

    sign_in users(:userone)
    get tweets_url
    assert_response :success
  end
end
