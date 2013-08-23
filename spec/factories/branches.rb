# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :branch do
    branch_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    phone_1 "MyString"
    phone_2 "MyString"
    fax "MyString"
  end
end
