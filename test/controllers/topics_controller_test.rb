require "test_helper"

class TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should go to tweets/index page" do
    get topics_path

    assert_response :success
  end

  test "should go to tweets/new page" do
    get new_topic_path

    assert_response :success
  end

  test "should redirect to users path after create" do
    post create_topic_path params: {topic: 
                                      {topic: "random trending topic here"}}
    assert_response :redirect
  end
end
