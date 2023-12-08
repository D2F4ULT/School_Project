class LogInMenuController < ApplicationController
    # Other actions
    
    def create
      user = User.find_by(email: params[:email])
  
      if user&.valid_password?(params[:password])
        sign_in(user)
        redirect_to dashboard_index_path, notice: 'Logged in successfully!'
      else
        flash.now[:alert] = 'Invalid email or password'
        render 'home/LogInMenu' # Render the login page again with an error message
      end
    end
  end
  