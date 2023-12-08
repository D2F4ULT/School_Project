class HomeController < ApplicationController
  def LogInMenu
    # Assuming this is a GET request to display the login form

    # Add necessary code to handle the rendering of the login form
    # ...
  end

  def create_session
    # This action is typically used to process form submission for login
    user = User.find_by(email: params[:email])

    if user&.valid_password?(params[:password])
      sign_in(user) # This method is provided by Devise to sign in the user
      redirect_to '/dashboard', notice: 'Logged in successfully!'
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new' # Render the login page again with an error message
    end
  end
end