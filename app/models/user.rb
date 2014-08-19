class User < ActiveRecord::Base
  has_many :companies
  has_many :orders

  attr_accessor :stripe_card_token

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify

  after_create :create_current_users_company

  def admin?
    has_role?(:admin)
  end

  def create_current_users_company
    company = companies.build
    company.save(validate: false)
  end

  def create_stripe_customer(token)
    if stripe_customer.blank?
      customer = Stripe::Customer.create(:card => token, :description => email)
      update_attribute :stripe_customer_id, customer.id if customer
    end
  end

  def stripe_customer
    begin
      Stripe::Customer.retrieve(stripe_customer_id)
    rescue
      nil
    end
  end

end
