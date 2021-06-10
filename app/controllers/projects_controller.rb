class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @volunteer = Volunteer.new
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
