Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 
  resources :categories, except: [:destroy]
  #post 'users', to: 'users#create'
  root 'pages#home'
  resources :users, except: [:new]
  resources :articles
end
