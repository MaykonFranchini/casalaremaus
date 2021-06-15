class Admin::VolunteersController < ApplicationController
  before_action :set_volunteer

  def edit
  end

  def update
    if @volunteer.update(project_params)
      redirect_to dashboard_adm_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @project.destroy
    redirect_to dashboard_adm_path
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end
  
  def project_params
    params.require(:volunteer).permit(:name, :description, :photo)
  end
end
