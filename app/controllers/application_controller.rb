class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, only: :dashboard_adm, unless: :skip_pundit?

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
