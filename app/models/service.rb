class Service < ActiveRecord::Base
  has_many :categories, as: :categorizable
  has_many :print_selections, :as => :printable
  has_many :online_selections, :as => :onlineable
end
