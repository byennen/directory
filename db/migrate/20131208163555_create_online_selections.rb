class CreateOnlineSelections < ActiveRecord::Migration
  def change
    create_table :online_selections do |t|
      t.references :onlineable, :polymorphic => true
      t.integer :company_id
    end
  end
end
