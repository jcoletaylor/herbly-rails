# == Schema Information
#
# Table name: formula_also_knowns
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  formula_id :bigint           not null
#
# Indexes
#
#  index_formula_also_knowns_on_formula_id  (formula_id)
#  index_formula_also_knowns_on_name        (name)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
class FormulaAlsoKnown < ApplicationRecord
  belongs_to :formula

  validates :name, presence: true
  validates :formula, presence: true
end
