class Category < ActiveRecord::Base
  #has_many :users, :through => :user_category_selections
  TYPES = ["Equipment", "Material", "Service"]
end
