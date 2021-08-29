class Topic < ApplicationRecord
  
  has_many :tweet_topics
  has_many :tweets, through: :tweet_topics
  validates :topic, presence: true,
                    uniqueness: {case_sensitive: false}
end
