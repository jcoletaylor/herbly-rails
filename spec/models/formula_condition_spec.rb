# == Schema Information
#
# Table name: formula_conditions
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  condition_id :bigint           not null
#  formula_id   :bigint           not null
#
# Indexes
#
#  index_formula_conditions_on_condition_id  (condition_id)
#  index_formula_conditions_on_formula_id    (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (condition_id => conditions.id)
#  fk_rails_...  (formula_id => formulas.id)
#
require 'rails_helper'

RSpec.describe FormulaCondition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
