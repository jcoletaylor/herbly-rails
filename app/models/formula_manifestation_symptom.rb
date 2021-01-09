class FormulaManifestationSymptom < ApplicationRecord
  belongs_to :formula_manifestation
  belongs_to :symptom

  validates :formula_manifestation, presence: true
  validates :symptom, presence: true
end
