Rails.application.routes.draw do
  root 'pages#home'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', to: 'sessions#destroy'
  
  resources :tweets do
    resources :replies
  end

  resources :topics


  get '*path', to: 'pages#home', via: :all
end
