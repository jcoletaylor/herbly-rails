class FormulaCondition < ApplicationRecord
  belongs_to :formula
  belongs_to :condition

  validates :formula, presence: true
  validates :condition, presence: true
end
