class CreateFormulaConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_conditions do |t|
      t.references :formula, null: false, foreign_key: true
      t.references :condition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
