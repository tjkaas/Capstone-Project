class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
    
    def index
    end
    
    def new
      @user = User.new
    end
    
    def show
    @user = User.find(params[:id])
    @projects = @user.projects.paginate(page: params[:page])
  end

    
    def edit
    end
    
    def login
    end
end