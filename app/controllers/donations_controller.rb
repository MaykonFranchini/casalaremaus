class DonationsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @donations = Donation.all
  end
  def new
    @donation = Donation.new
  end
end
