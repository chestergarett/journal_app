class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_topics
  has_many :topics, through: :tweet_topics
  has_many :replies
  accepts_nested_attributes_for :replies, :allow_destroy => true
  validates :tweet, presence: true,
                    length: {minimum: 3, maximum: 140}
end
