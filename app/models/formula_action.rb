class FormulaAction < ApplicationRecord
  belongs_to :formula
  belongs_to :formula_named_action

  validates :formula, presence: true
  validates :formula_named_action, presence: true
end
