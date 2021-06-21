class UserMailer < ApplicationMailer
  def order
    @order = params[:order]
    mail(to: @order.email, subject: 'Thanks for your donation')
  end
end
