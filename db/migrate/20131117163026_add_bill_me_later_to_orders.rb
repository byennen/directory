class AddBillMeLaterToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :bill_me_later, :boolean
  end
end
