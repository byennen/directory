class CompanyMaterialSelection < ActiveRecord::Base
  belongs_to :material
  belongs_to :company
end
