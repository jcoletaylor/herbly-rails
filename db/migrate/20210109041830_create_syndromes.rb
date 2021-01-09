class CreateSyndromes < ActiveRecord::Migration[6.0]
  def change
    create_table :syndromes do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :syndromes, :name
  end
end
