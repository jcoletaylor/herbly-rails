# frozen_string_literal: true

class CreateFormulaSyndromes < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_syndromes do |t|
      t.references :formula, null: false, foreign_key: true
      t.references :syndrome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
