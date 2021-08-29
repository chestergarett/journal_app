class TweetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :tweet, :user_id, :created_at, :updated_at
end
