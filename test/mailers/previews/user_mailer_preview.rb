class UserMailerPreview < ActionMailer::Preview
  def new_order
    order = Order.last
    UserMailer.email_receipt(order).deliver
  end
end