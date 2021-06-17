class Admin::ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]
    def new
      @user = current_user
      authorize @user
      @project = Project.new
    end

    def create
      @user = current_user
      authorize @user
      @project = Project.new(project_params)
      if @project.save
        redirect_to projects_path
      else
        render 'new'
      end
    end

    def edit
      @user = current_user
      authorize @user
    end

    def update
      @user = current_user
      authorize @user
      if @project.update(project_params)
        redirect_to dashboard_adm_path
      else
        render 'edit'
      end
    end

    def destroy
      @user = current_user
      authorize @user
      @project.destroy
      redirect_to dashboard_adm_path
    end

    private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :status, :description, :photo)
    end
end