class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :conditions, :name
  end
end
