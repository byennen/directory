class ChangeUsersColumn < ActiveRecord::Migration
  def change
    rename_column :users, :stripe_card_token, :stripe_customer_id
  end
end
