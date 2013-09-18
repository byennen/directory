class Order < ActiveRecord::Base
  belongs_to :user

  def charge!
    money = Money.new(1 * 100, "USD")
    Stripe::Charge.create(
        :amount => money.cents,
        :currency => "usd",
        :customer => user.stripe_customer_token,
        :description => "Charge for Event Title Here"
    )
  end

  def ensure_stripe_customer
    if stripe_customer_token.nil?
      logger.debug("stripe card token is #{stripe_card_token}")
      customer = Stripe::Customer.create(:email => email, :card => stripe_card_token)
      update_attribute(:stripe_customer_token, customer.id)
    end
  end
end
