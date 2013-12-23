class AddParentToPolimophicCategories < ActiveRecord::Migration
  def change
    add_column :equipment, :parent_id, :integer
    add_column :services, :parent_id, :integer
    add_column :materials, :parent_id, :integer
  end
end