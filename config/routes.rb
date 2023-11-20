Rails.application.routes.draw do
  root 'home#index'
  get 'home/LogInMenu', to: 'home#LogInMenu' # Assuming 'log_in_menu' is the action/method name

  # Define your other application routes here

  # Route to reveal health status at /up: returns 200 if the app boots with no exceptions, otherwise 500.
  # Used by load balancers and uptime monitors to verify app availability.
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # Example of a root path route ("/")
  # root "posts#index"
end