class DonationsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @donations = Donation.all
  end
end
