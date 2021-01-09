class CreateHerbProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_properties do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :herb_property_type, null: false, foreign_key: true
      t.references :precedence_type, null: false, foreign_key: true
      t.string :property

      t.timestamps
    end
    add_index :herb_properties, :property
  end
end
