Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
  get "/jobs" => "jobs#index"
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  # Defines the root path route ("/")
  # root "posts#index"
  # 
  # config/routes.rb
  scope :api do
    post '/run_seeds', to: 'tasks#seed'
  end


end
