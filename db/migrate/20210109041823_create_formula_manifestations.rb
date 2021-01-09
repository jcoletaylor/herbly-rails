class CreateFormulaManifestations < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_manifestations do |t|
      t.references :formula, null: false, foreign_key: true
      t.string :tongue
      t.string :tongue_coat
      t.string :pulse

      t.timestamps
    end
  end
end
