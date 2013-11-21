class Equipment < ActiveRecord::Base
  has_many :company_equipment_selections
  has_many :companies, through: :company_equipment_selections
  has_many :company_print_selections, :as => :printable
end
