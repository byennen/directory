class CreateCompanyPrintSelections < ActiveRecord::Migration
  def change
    create_table :company_print_selections do |t|
      t.integer :printable_id
      t.string :printable_type
      t.integer :company_id
    end
  end
end
