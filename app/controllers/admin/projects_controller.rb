class Admin::ProjectsController < ApplicationController
    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      if @project.save
        @project.update(status: true)
        redirect_to projects_path
      else
        render 'new'
      end
    end

    private

    def project_params
      params.require(:project).permit(:name, :description, :photo)
    end
end