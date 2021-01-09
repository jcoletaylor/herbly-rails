class FormulaHerb < ApplicationRecord
  belongs_to :formula
  belongs_to :herb

  validates :formula, presence: true
  validates :herb, presence: true
  validates :dosage, presence: true
end
