class Service < ActiveRecord::Base
  has_many :company_service_selections
  has_many :companies, through: :company_service_selections
end
