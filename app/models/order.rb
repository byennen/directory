class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  def charge!
    if Stripe::Charge.create({
        :amount => price_cents,
        :currency => "usd",
        :customer => user.stripe_customer_id,
        :description => "#{user.email} Charge for #{company.company_name}"})
      update_attribute :bill_me_later, nil
      NotificationMailer.user_notice_order(self).deliver
      NotificationMailer.admin_notice_order(self).deliver
    end
  end

  def paid?
    bill_me_later? ? "Bill later" : "Paid" 
  end

  def price
    price_cents.to_i/100 unless price_cents.blank?
  end
end
