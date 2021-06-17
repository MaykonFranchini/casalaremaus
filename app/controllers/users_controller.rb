class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard_adm
    @user = current_user
    authorize @user
    @projects = Project.all
    @volunteers = Volunteer.all
    @donations = Donation.all
    @orders = Order.all
  end

  def dashboard_user
  end

end
