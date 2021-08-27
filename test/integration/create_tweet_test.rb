require 'test_helper'

class CreateTweetTest < ActionDispatch::IntegrationTest

  test 'should go to new tweet form and able to create tweet' do
    get new_tweet_path
    assert_response :success
    assert_difference 'Tweet.count', 1 do
      post create_tweet_path, params: {tweet:{ tweet: 'test tweet'                                      
                                            }}
      end
      follow_redirect!
      assert_response :success
    end
end