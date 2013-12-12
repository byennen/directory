class Category < ActiveRecord::Base
  belongs_to :categorizable, :polymorphic => true
  belongs_to :company
end
