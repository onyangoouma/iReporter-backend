Rails.application.routes.draw do
<<<<<<< HEAD
  post 'user_token' => 'user_token#create'
=======
  resources :admins
>>>>>>> 5c3c6bf16b296dd213d1174aa996a9755aefeee9
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
