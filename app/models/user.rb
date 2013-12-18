class User < ActiveRecord::Base
  has_one :company
  has_many :orders

  attr_accessor :stripe_card_token

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_current_users_company

  def admin?
    has_role?(:admin)
  end

  def create_current_users_company
    Company.create(user_id: self.id)
  end
end
