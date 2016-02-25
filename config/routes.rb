Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  #post 'users', to: 'users#create'
  root 'pages#home'
  resources :users, except: [:new]
  resources :articles
end
