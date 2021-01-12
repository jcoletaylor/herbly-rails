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
require 'rails_helper'

RSpec.describe FormulaContraindication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
