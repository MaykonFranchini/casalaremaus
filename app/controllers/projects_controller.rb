class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :edit, :update]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
