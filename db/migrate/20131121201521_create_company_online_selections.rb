class CreateCompanyOnlineSelections < ActiveRecord::Migration
  def change
    create_table :company_online_selections do |t|
      t.integer :printable_id
      t.string :printable_type
      t.integer :company_id

      t.timestamps
    end
  end
end
