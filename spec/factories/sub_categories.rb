# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sub_category do
    categorizable nil
    company_id 1
  end
end
