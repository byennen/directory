class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :contact_name
      t.string :company_name
      t.string :sub_company_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :website
      t.string :phone_1
      t.string :phone_2
      t.string :fax
      t.integer :logo_package_id
      t.string :logo

      t.timestamps
    end
  end
end
