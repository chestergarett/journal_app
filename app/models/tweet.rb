class Tweet < ApplicationRecord
  belongs_to :users
  has_many :tweet_topics
  has_many :topics, through: :tweet_topics
  has_many :replies
  validates :tweet, presence: true,
                    length: {minimum: 3, maximum: 140}
end
