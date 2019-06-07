class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
def home
    @project.all
end

end
