class User < ActiveRecord::Base
  has_one :logo_package
  has_many :branches
  has_many :user_category_selections

  attr_accessor :stripe_card_token

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :logo_package_id, :logo, :remote_logo_url

  mount_uploader :logo, LogoUploader

  accepts_nested_attributes_for :branches

end
