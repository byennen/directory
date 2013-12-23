class AddStateToCompanies < ActiveRecord::Migration
  def change
    rename_column :companies, :state, :addr_state
    add_column :companies, :state, :string, defaut: 'general'
  end
end
