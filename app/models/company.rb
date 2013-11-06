class Company < ActiveRecord::Base
  has_one :user
  has_one :logo_package
  has_many :branches
  has_many :user_category_selections

  mount_uploader :logo, LogoUploader

  accepts_nested_attributes_for :branches

end
