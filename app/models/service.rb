class Service < ActiveRecord::Base
  has_many :categories, as: :categorizable
  has_many :print_selections, :as => :printable
  has_many :online_selections, :as => :onlineable
  has_many :sub_services, foreign_key: :parent_id

  scope :master, -> {where parent_id: nil}
end