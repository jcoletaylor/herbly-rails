class CreateFormulaHerbActions < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_herb_actions do |t|
      t.references :formula_herb, null: false, foreign_key: true
      t.references :formula_named_action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
