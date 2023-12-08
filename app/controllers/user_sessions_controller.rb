# app/controllers/user_sessions_controller.rb

class UserSessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user&.valid_password?(params[:password])
      sign_in(user) # This method is provided by Devise to sign in the user
      redirect_to dashboard_path, notice: 'Logged in successfully!'
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new' # Render the login page again with an error message
    end
  end
end