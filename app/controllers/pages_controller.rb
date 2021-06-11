class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
  end

  def download
    send_file 'app/assets/public/autorizacao-nova.doc', type: "document/doc", :x_sendfile=>true
  end

  # def transfer
  #   create_session
  # end
  #
  # def create_session
  #   response = HTTParty.post("https://ws.sandbox.pagseguro.uol.com.br/v2/sessions?email=#{ENV['PAGSEGURO_EMAIL']}&token=#{ENV['PAGSEGURO_TOKEN']}")
  #   @pag_session_id = response['session']['id']
  # end
end
