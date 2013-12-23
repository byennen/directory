class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.date :print_edition_deadline

      t.timestamps
    end
  end
end
