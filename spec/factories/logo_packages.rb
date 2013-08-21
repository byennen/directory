# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :logo_package do
    name "MyString"
    price_cents 1
    price_currency "MyString"
  end
end
