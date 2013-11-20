class CompanyEquipmentSelection < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :company
end
