class CreateFormulaContraindications < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_contraindications do |t|
      t.references :formula, null: false, foreign_key: true
      t.text :contraindication

      t.timestamps
    end
  end
end
