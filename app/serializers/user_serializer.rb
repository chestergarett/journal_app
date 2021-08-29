class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :password_digest, :created_at, :updated_at, :username

  has_many :tweets
end
