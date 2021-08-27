class Reply < ApplicationRecord
  belongs_to :tweets
  belongs_to :users
  validates :reply, presence: true,
                    uniqueness: {case_sensitive: false},
                    length: {minimum: 3, maximum: 50}
end