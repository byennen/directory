class SubCategory < ActiveRecord::Base
  belongs_to :sub_categorizable, :polymorphic => true
  belongs_to :company
end
