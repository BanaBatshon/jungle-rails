class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def email_receipt(user, order)
    @user = user
    @order = order
    @url  = '/orders/:id'
    mail(to: order.email, subject: 'Here is your order ID for reference: #{order.id}')
  end

end
