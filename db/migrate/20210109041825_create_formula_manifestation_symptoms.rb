# frozen_string_literal: true

class CreateFormulaManifestationSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :formula_manifestation_symptoms do |t|
      t.references :formula_manifestation, null: false, foreign_key: true, index: { name: :index_formula_manifest_sx_on_formula_manifest_id }
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
