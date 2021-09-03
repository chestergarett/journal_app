class Reply < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  validates :reply, presence: true,
                    uniqueness: {case_sensitive: false},
                    length: {minimum: 3, maximum: 50}
  validates :duedate, presence: true
  validates :status, presence: true
end