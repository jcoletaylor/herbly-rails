class CreateHerbWarnings < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_warnings do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :herb_warning_type, null: false, foreign_key: true
      t.string :warning, null: false

      t.timestamps
    end
  end
end
