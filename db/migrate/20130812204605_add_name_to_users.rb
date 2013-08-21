class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :company_name, :string
    add_column :users, :sub_company_name, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
    add_column :users, :website, :string
    add_column :users, :phone_1, :string
    add_column :users, :phone_2, :string
    add_column :users, :fax, :string
    add_column :users, :logo_package_id, :integer
    add_column :users, :logo, :string
  end
end
