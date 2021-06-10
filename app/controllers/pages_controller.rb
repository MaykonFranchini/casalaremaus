class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
  end

  def download
    send_file 'app/assets/public/autorizacao-nova.doc', type: "document/doc", :x_sendfile=>true
  end
end
