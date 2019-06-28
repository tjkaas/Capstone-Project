class UsersController < ApplicationController

    
#   before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
#   before_action :correct_user,   only: [:edit, :update]
#   before_action :admin_user,     only: :destroy 
  
    def index
        # @users = User.where(activated: true).paginate(page: params[:page])
    end
    
    def show
        @user = User.find(params[:id])
        @microposts = @user.microposts.paginate(page: params[:page])
    end
    
    def new
      @user = User.new
    end
    


    def show
    @user = User.find(params[:id])
    @projects = @user.projects.paginate(page: params[:page])
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
        
    end
    
    def update
        if @user.update_attributes(user_params)
            flash[:success] = "Profile updated"
            redirect_to @user
        else
            render 'edit'
        end
    end
    
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
end
