class CreatePrintSelections < ActiveRecord::Migration
  def change
    create_table :print_selections do |t|
      t.references :printable, :polymorphic => true
      t.integer :company_id
    end
  end
end
