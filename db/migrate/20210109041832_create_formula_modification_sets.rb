class CreateFormulaModificationSets < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_modification_sets do |t|
      t.references :formula, null: false, foreign_key: true
      t.string :purpose

      t.timestamps
    end
    add_index :formula_modification_sets, :purpose
  end
end
