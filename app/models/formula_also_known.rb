class FormulaAlsoKnown < ApplicationRecord
  belongs_to :formula

  validates :name, presence: true
  validates :formula, presence: true
end
