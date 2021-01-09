class CreateHerbPropertyTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_property_types do |t|
      t.string :name, null: false, unique: true
      t.text :description

      t.timestamps
    end
    add_index :herb_property_types, :name
  end
end
