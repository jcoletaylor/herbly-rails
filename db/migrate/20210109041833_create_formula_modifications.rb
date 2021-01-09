class CreateFormulaModifications < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_modifications do |t|
      t.references :formula_modification_set, null: false, foreign_key: true
      t.references :herb, null: false, foreign_key: true
      t.string :modification

      t.timestamps
    end
  end
end
