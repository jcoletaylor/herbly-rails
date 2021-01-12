# == Schema Information
#
# Table name: formula_syndromes
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  formula_id  :bigint           not null
#  syndrome_id :bigint           not null
#
# Indexes
#
#  index_formula_syndromes_on_formula_id   (formula_id)
#  index_formula_syndromes_on_syndrome_id  (syndrome_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#  fk_rails_...  (syndrome_id => syndromes.id)
#
require 'rails_helper'

RSpec.describe FormulaSyndrome, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
