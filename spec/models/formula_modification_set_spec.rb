# == Schema Information
#
# Table name: formula_modification_sets
#
#  id         :bigint           not null, primary key
#  purpose    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  formula_id :bigint           not null
#
# Indexes
#
#  index_formula_modification_sets_on_formula_id  (formula_id)
#  index_formula_modification_sets_on_purpose     (purpose)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
require 'rails_helper'

RSpec.describe FormulaModificationSet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
