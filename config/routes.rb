Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Devise routes with custom controller for sessions
  devise_for :users, controllers: {
    sessions: 'log_in_page'
  }, skip: [:registrations]

  # Your root and other routes
  
  root 'home#index'
  get '/dashboard', to: 'dashboard#index', as: 'dashboard_index'
  get 'home/LogInMenu', to: 'home#LogInMenu' # Assuming this is your login form
  post 'create_log_in_menu', to: 'log_in_menu#create', as: :create_log_in_menu
  # Health check route
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # Other routes...
end
