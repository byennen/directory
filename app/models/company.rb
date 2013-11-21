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

  has_many :company_print_selections
  has_many :equipment_print_printables, through: :company_print_selections, source: :printable, source_type: 'Equipment'
  has_many :material_print_printables, through: :company_print_selections, source: :printable, source_type: 'Material'
  has_many :service_print_printables, through: :company_print_selections, source: :printable, source_type: 'Service'

  has_many :company_online_selections
  has_many :equipment_online_printables, through: :company_online_selections, source: :printable, source_type: 'Equipment'
  has_many :material_online_printables, through: :company_online_selections, source: :printable, source_type: 'Material'
  has_many :service_online_printables, through: :company_online_selections, source: :printable, source_type: 'Service'

  mount_uploader :logo, LogoUploader

  accepts_nested_attributes_for :branches, allow_destroy: true

end
