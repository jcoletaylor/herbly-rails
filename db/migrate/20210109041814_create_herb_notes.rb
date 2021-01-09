class CreateHerbNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_notes do |t|
      t.references :herb, null: false, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
