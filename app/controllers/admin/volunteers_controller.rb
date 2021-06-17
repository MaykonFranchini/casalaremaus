class Admin::VolunteersController < ApplicationController
  before_action :set_volunteer

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    stringfy_availability
    
    if @volunteer.update(project_params)
      redirect_to dashboard_adm_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @user = current_user
    authorize @user
    @volunteer.destroy
    redirect_to dashboard_adm_path
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end
  
  def project_params
    params.require(:volunteer).permit(:name, :email, :phone, :marital_status, :date_of_birth, :cpf, :cnpj, :skills, :availability, :experience, :cpf_or_cnpj)
  end

  def stringfy_availability
    params[:volunteer][:availability].shift
    params[:volunteer][:availability] = params[:volunteer][:availability].join(', ')
  end
end
