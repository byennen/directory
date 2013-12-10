class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :categorizable, :polymorphic => true
      t.integer :company_id
    end
  end
end
