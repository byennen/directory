# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    contact_name "MyString"
    company_name "MyString"
    sub_company_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    website "MyString"
    phone_1 "MyString"
    phone_2 "MyString"
    fax "MyString"
    logo_package_id 1
    logo "MyString"
  end
end
