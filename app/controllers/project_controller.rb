class ProjectController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @project.destroy
    flash[:success] = "Project deleted"
    redirect_to request.referrer || root_url
  end

  private

    def project_params
      params.require(:project).permit(:content)
    end
    
    def correct_user
      @project = current_user.project.find_by(id: params[:id])
      redirect_to root_url if @project.nil?
    end
end