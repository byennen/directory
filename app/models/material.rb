class Material < ActiveRecord::Base
  has_many :company_material_selections
  has_many :companies, through: :company_material_selections
  has_many :company_print_selections, :as => :printable
end
