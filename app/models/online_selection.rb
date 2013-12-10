class OnlineSelection < ActiveRecord::Base
  belongs_to :onlineable, :polymorphic => true
  belongs_to :company
end
