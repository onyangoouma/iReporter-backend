Rails.application.routes.draw do
  resources :cases, only: [:index, :create, :show, :update, :delete]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
