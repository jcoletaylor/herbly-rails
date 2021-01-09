class FormulaModification < ApplicationRecord
  belongs_to :formula_modification_set
  belongs_to :herb

  validates :formula_modification_set, presence: true
  validates :herb, presence: true
  validates :modification, presence: true
end
