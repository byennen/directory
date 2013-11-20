class Company < ActiveRecord::Base
  has_one :user
  has_one :logo_package
  has_many :branches
  has_many :company_equipment_selections
  has_many :equipments, through: :company_equipment_selections
  has_many :company_material_selections
  has_many :materials, through: :company_material_selections
  has_many :company_service_selections
  has_many :services, through: :company_service_selections

  mount_uploader :logo, LogoUploader

  accepts_nested_attributes_for :branches, allow_destroy: true

end
