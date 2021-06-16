class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard_adm
    @projects = Project.all
    @donations = Donation.all
  end

  def dashboard_user
  end

end
