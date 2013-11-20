class CreateCompanyEquipmentSelections < ActiveRecord::Migration
  def change
    create_table :company_equipment_selections do |t|
      t.integer :equipment_id
      t.integer :company_id

      t.timestamps
    end
  end
end
