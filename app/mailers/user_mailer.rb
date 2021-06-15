class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order.subject
  #
  def order
    @order = params[:order]
    mail(to: @order.email, subject: 'Thanks for your donation')
  end
end
