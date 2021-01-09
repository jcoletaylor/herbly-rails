class CreateHerbDosages < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_dosages do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :herb_dosage_type, null: false, foreign_key: true
      t.string :dose

      t.timestamps
    end
  end
end
