# frozen_string_literal: true

class CreateFormulaHerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_herbs do |t|
      t.references :formula, null: false, foreign_key: true
      t.references :herb, null: false, foreign_key: true
      t.string :dosage

      t.timestamps
    end
  end
end
