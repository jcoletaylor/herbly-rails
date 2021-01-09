class FormulaHerbAction < ApplicationRecord
  belongs_to :formula_herb
  belongs_to :formula_named_action

  validates :formula_herb, presence: true
  validates :formula_named_action, presence: true
end
