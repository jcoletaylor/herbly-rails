class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :symptoms, :name
  end
end
