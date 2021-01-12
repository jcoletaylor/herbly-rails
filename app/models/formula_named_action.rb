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
class FormulaNamedAction < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
