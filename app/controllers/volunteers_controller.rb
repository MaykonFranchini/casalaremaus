class VolunteersController < ApplicationController
  def create
    stringfy_availability
    @volunteer = Volunteer.new(volunteer_params)
    @project = Project.find(params[:project_id])
    instanciate_solicitation

    if @volunteer.save
      @solicitation.save
      redirect_to projects_path
    else
      render "projects/show"
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :phone, :marital_status,
                                      :date_of_birth, :cpf, :cnpj, :skills, :availability,
                                      :experience, :cpf_or_cnpj)
  end

  def stringfy_availability
    params[:volunteer][:availability].shift
    params[:volunteer][:availability] = params[:volunteer][:availability].join(', ')
  end

  def instanciate_solicitation
    @solicitation = Solicitation.new
    @solicitation.volunteer = @volunteer
    @solicitation.project = @project
  end
end
