class CompanyOnlineSelection < ActiveRecord::Base
  belongs_to :printable, :polymorphic => true
  belongs_to :company
end
