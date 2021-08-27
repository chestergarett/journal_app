require "test_helper"

class TopicTest < ActiveSupport::TestCase

  test "topic column is required" do
    topic = Topic.new

    assert_not topic.save
  end

  test "topic should be unique" do
    topic = Topic.new(topic: "#blessed")
    topic.save
    topic2 = Topic.new(topic: "#blessEd")

    assert_not topic2.save
  end
end
