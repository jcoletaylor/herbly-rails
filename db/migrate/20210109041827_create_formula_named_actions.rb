class CreateFormulaNamedActions < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_named_actions do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
    add_index :formula_named_actions, :name
  end
end
