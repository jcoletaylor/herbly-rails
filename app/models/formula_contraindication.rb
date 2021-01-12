# == Schema Information
#
# Table name: formula_contraindications
#
#  id               :bigint           not null, primary key
#  contraindication :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  formula_id       :bigint           not null
#
# Indexes
#
#  index_formula_contraindications_on_formula_id  (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
class FormulaContraindication < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :contraindication, presence: true
end
