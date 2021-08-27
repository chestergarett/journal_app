Rails.application.routes.draw do
  resources :users
  post 'users' => 'users#create', as: 'create_user'
  resources :tweets
  post 'tweets' => 'tweets#create', as: 'create_tweet'
  resources :topics
  post 'topics' => 'topics#create', as: 'create_topic'
  resources :replies
  post 'replies' => 'replies#create', as: 'create_reply'
end
