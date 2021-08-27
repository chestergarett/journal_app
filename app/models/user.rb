class User < ApplicationRecord
  has_many :tweets
  validates :username, presence: true,
                        uniqueness: {case_sensitive: false},
                        length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i   
  validates :email, presence: true,
                        uniqueness: {case_sensitive: false},
                        format: {with: VALID_EMAIL_REGEX},
                        length: {maximum: 100}
  validates :password_digest, presence: true
end
