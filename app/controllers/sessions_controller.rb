# Devise routes with custom controller for sessions
devise_for :users, controllers: {
  sessions: 'log_in_page'
}, skip: [:registrations]
