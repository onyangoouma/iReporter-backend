Rails.application.routes.draw do
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :incidents, only: [:index, :create, :show, :update, :delete]
  
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

post "/signup", to: "users#create"
get "/me", to: "users#show"
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"

resources :users

  resources :users
  get '/auth', to: 'users#show'
  post '/signup', to: 'users#create'
 
end
