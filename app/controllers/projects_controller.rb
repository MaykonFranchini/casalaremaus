class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @projects = Project.all
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
