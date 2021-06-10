class VolunteersController < ApplicationController
  def create
    @volunteer = Volunteer.new(volunteer_params)
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.new
    @solicitation.volunteer = @volunteer
    @solicitation.project = @project
    @solicitation.save

    if @volunteer.save
      redirect_to projects_path
    else
      redirect_to project_path(@project)
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :phone, :marital_status, :date_of_birth, :cpf, :cnpj, :skills, :availability, :experience)
  end
end
