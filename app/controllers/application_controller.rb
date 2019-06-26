class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  
def home
   
end
=======
  include SessionsHelper
>>>>>>> 937c57954beb6870e282b3db2e85dcb0dca10a7d

  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end