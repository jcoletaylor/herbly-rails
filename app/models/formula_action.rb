# frozen_string_literal: true

# == Schema Information
#
# Table name: formula_actions
#
#  id                      :bigint           not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  formula_id              :bigint           not null
#  formula_named_action_id :bigint           not null
#
# Indexes
#
#  index_formula_actions_on_formula_id               (formula_id)
#  index_formula_actions_on_formula_named_action_id  (formula_named_action_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#  fk_rails_...  (formula_named_action_id => formula_named_actions.id)
#
class FormulaAction < ApplicationRecord
  belongs_to :formula
  belongs_to :formula_named_action

  validates :formula, presence: true
  validates :formula_named_action, presence: true
end
