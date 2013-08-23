class User < ActiveRecord::Base
  has_one :logo_package
  has_many :branches

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :logo_package_id, :logo, :remote_logo_url

  mount_uploader :logo, LogoUploader
end
