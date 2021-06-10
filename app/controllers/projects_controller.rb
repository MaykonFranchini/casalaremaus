class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :edit, :update]
  def index
    @projects = Project.all
  end
end
