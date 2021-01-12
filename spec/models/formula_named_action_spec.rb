# == Schema Information
#
# Table name: formula_named_actions
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_formula_named_actions_on_name  (name)
#
require 'rails_helper'

RSpec.describe FormulaNamedAction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
