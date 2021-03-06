Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get '/login'      => 'sessions#new'
  post '/login'     => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
  get '/signup'     => 'users#new'
  post '/signup'    => 'users#create'
  get '/home'       => 'static_pages#home'
  get '/help'       => 'static_pages#help'
  get '/about'      => 'static_pages#about'
  get '/contact'    => 'static_pages#contact'

  resources :users
  resources :account_activations,only: [:edit]
  resources :password_resets , only: [:new,:create,:edit,:update]
  resources :microposts, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
