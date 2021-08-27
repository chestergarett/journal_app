class Tweet < ApplicationRecord
  has_many :topic_tweets
  has_many :topics, through :topic_tweets
  
  validates :tweet, presence: true,
                    length: {maximum: 140}
end
