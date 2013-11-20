class CreateCompanyServiceSelections < ActiveRecord::Migration
  def change
    create_table :company_service_selections do |t|
      t.integer :service_id
      t.integer :company_id

      t.timestamps
    end
  end
end
