# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    categorizable_id 1
    categorizable_type "MyString"
    company_id 1
  end
end
