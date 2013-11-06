json.array!(@companies) do |company|
  json.extract! company, :contact_name, :company_name, :sub_company_name, :address_1, :address_2, :city, :state, :zip, :country, :website, :phone_1, :phone_2, :fax, :logo_package_id, :logo
  json.url company_url(company, format: :json)
end
