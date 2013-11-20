class CreateCompanyMaterialSelections < ActiveRecord::Migration
  def change
    create_table :company_material_selections do |t|
      t.integer :material_id
      t.integer :company_id

      t.timestamps
    end
  end
end
