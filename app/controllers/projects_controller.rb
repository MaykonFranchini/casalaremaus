class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  before_action :authenticate_user!, only: [:destroy, :edit, :update]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @volunteer = Volunteer.new

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
