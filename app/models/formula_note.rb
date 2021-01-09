class FormulaNote < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :note, presence: true
end
