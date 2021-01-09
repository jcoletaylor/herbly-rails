class FormulaModificationSet < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :purpose, presence: true
end
