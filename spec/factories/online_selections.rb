# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :online_selection do
    onlineable_id 1
    onlineable_type "MyString"
    company_id 1
  end
end
