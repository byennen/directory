class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.integer :company_id
      t.string  :branch_name
      t.string  :address_1
      t.string  :address_2
      t.string  :city
      t.string  :state
      t.string  :zip
      t.string  :country
      t.string  :phone_1
      t.string  :phone_2
      t.string  :fax
      t.timestamps
    end
  end
end
