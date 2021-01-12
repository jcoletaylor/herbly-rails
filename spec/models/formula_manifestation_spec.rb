# == Schema Information
#
# Table name: formula_manifestations
#
#  id          :bigint           not null, primary key
#  pulse       :string
#  tongue      :string
#  tongue_coat :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  formula_id  :bigint           not null
#
# Indexes
#
#  index_formula_manifestations_on_formula_id  (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
require 'rails_helper'

RSpec.describe FormulaManifestation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
