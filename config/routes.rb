Rails.application.routes.draw do
  
  resources :articles ,only: [:index,:new,:create,:edit,:update]
  root 'articles#index'
  # post 'articles' => 'articles#create'
  get '/detail/:id', to: 'articles#detail'
  
  get 'users/new'
  get 'pages/home'
  get '/home', to: 'pages#home'

  get 'inscription' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
