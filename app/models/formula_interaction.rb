class FormulaInteraction < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :interaction, presence: true
end
