Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :tweets
  root 'tweets#index'
  resources :topics
  resources :replies
end
