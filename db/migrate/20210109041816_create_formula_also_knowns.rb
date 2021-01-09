class CreateFormulaAlsoKnowns < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_also_knowns do |t|
      t.string :name, null: false
      t.references :formula, null: false, foreign_key: true

      t.timestamps
    end
    add_index :formula_also_knowns, :name
  end
end
