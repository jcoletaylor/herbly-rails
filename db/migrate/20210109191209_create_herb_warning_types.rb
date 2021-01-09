class CreateHerbWarningTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_warning_types do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :herb_warning_types, :name
  end
end
