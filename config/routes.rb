Rails.application.routes.draw do
  
  root 'articles#index'
  get '/detail/:id', to: 'articles#detail'
  
  resources :articles 
  # post 'articles' => 'articles#create'
  
  get 'users/new'
  get 'pages/home'
  get '/home', to: 'pages#home'

  get 'inscription' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  

  resources :users


  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
