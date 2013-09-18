# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user_id 1
    price_cents "MyString"
    price_currency "MyString"
  end
end
