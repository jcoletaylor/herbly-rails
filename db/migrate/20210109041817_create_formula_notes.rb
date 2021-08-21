# frozen_string_literal: true

class CreateFormulaNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_notes do |t|
      t.references :formula, null: false, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
