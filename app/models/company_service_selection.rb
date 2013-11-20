class CompanyServiceSelection < ActiveRecord::Base
  belongs_to :service
  belongs_to :company
end
