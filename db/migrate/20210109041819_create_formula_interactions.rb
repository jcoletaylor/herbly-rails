# frozen_string_literal: true

class CreateFormulaInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_interactions do |t|
      t.references :formula, null: false, foreign_key: true
      t.text :interaction

      t.timestamps
    end
  end
end
