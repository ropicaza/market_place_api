class OrderMailer < ApplicationMailer
  default from: 'no-reply@marketplace.com'
  def send_confirmation(order)
    @order = order
    @user = @order.user
    mail to: @user.email, subject: 'Order confirmation'
  end
end
