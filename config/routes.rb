Rails.application.routes.draw do
  resources :users
  get '/auth', to: 'users#show'
  post '/signup', to: 'users#create'
 
end
