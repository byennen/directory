class CreateCompanyCategorySelections < ActiveRecord::Migration
  def change
    create_table :company_category_selections do |t|
      t.integer :company_id
      t.integer :category_id

      t.timestamps
    end
  end
end
