require 'test_helper'

class CreateTopicTest < ActionDispatch::IntegrationTest

  test 'should go to new topic form and able to create topic' do
    get new_topic_path
    assert_response :success
    assert_difference 'Topic.count', 1 do
      post create_topic_path, params: {topic:{ topic: 'test topic'                                      
                                            }}
      end
      follow_redirect!
      assert_response :success
    end
end