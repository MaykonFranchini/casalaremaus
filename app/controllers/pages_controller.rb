class PagesController < ApplicationController

  def home
  end

  def about
  end

  def transfer
  end

  def download
    send_file 'app/assets/public/autorizacao-nova.doc', type: "document/doc", :x_sendfile=>true
  end

  def contact
    @marker = {
      lat: -27.591153,
      lng: -48.504397,
      image_url: helpers.asset_url('logo.png')
    }
  end

  def checkout
    # Gerar um Token de sessão para nosso pagamento
     @session_id = (PagSeguro::Session.create).id
  end

  def create_checkout
    # O modo como você irá armazenar os produtos que estão sendo comprados
    # depende de você. Neste caso, temos um modelo Order que referência os
    # produtos que estão sendo comprados.

    payment = PagSeguro::PaymentRequest.new

    payment.notification_url = notifications_url
    payment.redirect_url = processing_url

    response = payment.register

    # Caso o processo de checkout tenha dado errado, lança uma exceção.
    # Assim, um serviço de rastreamento de exceções ou até mesmo a gem
    # exception_notification poderá notificar sobre o ocorrido.
    #
    # Se estiver tudo certo, redireciona o comprador para o PagSeguro.
    if response.errors.any?
      raise response.errors.join("\n")
    else
      redirect_to response.url
    end
  end
end

