# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company_category_selection, :class => 'CompanyCategorySelections' do
    company_id 1
    category_id 1
  end
end
