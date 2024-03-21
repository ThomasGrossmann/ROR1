Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :school_classes
  resources :branches

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/" => "home#index", as: :home
  get "/register" => "auth#register", as: :register
  get "/login" => "auth#login", as: :login

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
