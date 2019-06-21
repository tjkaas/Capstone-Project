class UsersController < ApplicationController
    
    def index
    end
    
    def new
      @user = User.new
    end

    
    def edit
        @user = User.find(params[:id])
    end
    
    def login
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:info] = "Please check your email to activate your account."
            redirect_to root_url
        else
            render 'new'
        end
        
        def signup
        end
    end
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end