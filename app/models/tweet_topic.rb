class TweetTopic < ApplicationRecord
  belongs_to :tweet
  belongs_to :topic
end
