Rails.application.routes.draw do
  resources :exams
  devise_for :users
  resources :grades
  resources :school_classes
  resources :students
  resources :branches

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/" => "home#index", as: :home
  get "/grades_report" => "deans#grades_report", as: :grades_report

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
