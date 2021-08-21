# frozen_string_literal: true

class CreateFormulaActions < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_actions do |t|
      t.references :formula, null: false, foreign_key: true
      t.references :formula_named_action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
