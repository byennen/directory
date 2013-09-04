# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_category_selection, :class => 'UserCategorySelections' do
    user_id 1
    category_id 1
  end
end
