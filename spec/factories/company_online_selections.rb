# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company_online_selection do
    printable_id 1
    printable_type "MyString"
    company_id 1
  end
end
