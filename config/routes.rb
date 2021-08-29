Rails.application.routes.draw do
  root 'pages#home'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', to: 'sessions#destroy'
  
  resources :tweets
  resources :topics
  resources :replies

  get '*path', to: 'pages#home', via: :all
end
