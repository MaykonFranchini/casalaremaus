class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard_adm
  end

  def dashboard_user
  end

end
