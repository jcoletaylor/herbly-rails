class FormulaContraindication < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :contraindication, presence: true
end
