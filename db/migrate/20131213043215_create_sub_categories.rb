class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.references :sub_categorizable, :polymorphic => true
      t.integer :company_id
    end
  end
end
