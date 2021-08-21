# frozen_string_literal: true

# == Schema Information
#
# Table name: formula_interactions
#
#  id          :bigint           not null, primary key
#  interaction :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  formula_id  :bigint           not null
#
# Indexes
#
#  index_formula_interactions_on_formula_id  (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
class FormulaInteraction < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
  validates :interaction, presence: true
end
