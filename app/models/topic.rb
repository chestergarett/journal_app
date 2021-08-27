class Topic < ApplicationRecord
  has_many :topic_tweets
  has_many :tweets, through :topic_tweets
  validates :topic, presence: true,
                    uniqueness: {case_sensitive: false}
end
