class MoneyDonationsController < ApplicationController
  def new
    @money_donation = MoneyDonation.new
  end

  def index
  end

  def create
    @money_donation = MoneyDonation.new(money_donation_params)
    if @money_donation.save
      # O modo como você irá armazenar os produtos que estão sendo comprados
      # depende de você. Neste caso, temos um modelo Order que referência os
      # produtos que estão sendo comprados.

      payment = PagSeguro::PaymentRequest.new

      payment.shipping = {
        type_name: "sedex",
        cost: 0.01,
        address: {
          street: "Av. Brig. Faria Lima",
          number: 1384,
          complement: "5 andar",
          district: "Jardim Paulistano",
          city: "São Paulo",
          state: "SP",
          postal_code: "01452002"
        }
      }

      # Você também pode fazer o request de pagamento usando credenciais
      # diferentes, como no exemplo abaixo

      payment.reference = @money_donation.id
      payment.notification_url = donation_notification_url
      payment.redirect_url = money_donations_url


      payment.items << {
        id: @money_donation.id,
        description: @money_donation.description,
        amount: @money_donation.amount,
        weight: 1
      }

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
    else
      render :new
    end
  end

  def notification
    # Aqui recebemos um post com informaçõa e evemos usar essa informação para consultar um novo status
    # a partir de um novo request para a api.
  end

  private

  def money_donation_params
    params.require(:money_donation).permit(:amount, :email, :name, :telephone)
  end
end
