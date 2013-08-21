class CreateLogoPackages < ActiveRecord::Migration
  def change
    create_table :logo_packages do |t|
      t.string :name
      t.integer :price_cents
      t.string :price_currency

      t.timestamps
    end
  end
end
