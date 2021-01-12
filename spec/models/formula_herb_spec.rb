# == Schema Information
#
# Table name: formula_herbs
#
#  id         :bigint           not null, primary key
#  dosage     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  formula_id :bigint           not null
#  herb_id    :bigint           not null
#
# Indexes
#
#  index_formula_herbs_on_formula_id  (formula_id)
#  index_formula_herbs_on_herb_id     (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#  fk_rails_...  (herb_id => herbs.id)
#
require 'rails_helper'

RSpec.describe FormulaHerb, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
