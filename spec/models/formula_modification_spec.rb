# == Schema Information
#
# Table name: formula_modifications
#
#  id                          :bigint           not null, primary key
#  modification                :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  formula_modification_set_id :bigint           not null
#  herb_id                     :bigint           not null
#
# Indexes
#
#  index_formula_modifications_on_formula_modification_set_id  (formula_modification_set_id)
#  index_formula_modifications_on_herb_id                      (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_modification_set_id => formula_modification_sets.id)
#  fk_rails_...  (herb_id => herbs.id)
#
require 'rails_helper'

RSpec.describe FormulaModification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
