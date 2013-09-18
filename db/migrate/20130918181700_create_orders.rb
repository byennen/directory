class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :price_cents
      t.string :price_currency,   :default => "USD"

      t.timestamps
    end
  end
end
