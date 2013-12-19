class NotificationMailer < ActionMailer::Base
  default from: "support@metalsdirectory.com"

  def user_notice_order(order)
    @user = order.user
    @company = order.company
    @order = order
    mail to: @user.email, subject: 'Your purchase at Metals Directory'
  end

  def admin_notice_order(order)
    @user = order.user
    @company = order.company
    @order = order
    mail to: 'payments@themetaldirectory.com', subject: 'New purchase at Metals Directory'
  end

end