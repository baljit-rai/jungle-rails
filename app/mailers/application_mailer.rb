class UserNotifier < ActionMailer::Base
  default :from => 'no-reply@jungle.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_order_email(order)
    @orders = order
    mail( :to => @orders.email,
    :subject => 'Order Confirmation ##{@orders.email}' )
  end
end
