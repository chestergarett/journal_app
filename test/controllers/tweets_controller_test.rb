require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  
  test "should go to tweets/index page" do
    get tweets_path

    assert_response :success
  end

  test "should go to tweets/new page" do
    get new_tweet_path

    assert_response :success
  end

  test "should redirect to users path after create" do
    post create_tweet_path params: {tweet: 
                                      {tweet: "random tweet here"}}
    assert_response :redirect
  end
end
