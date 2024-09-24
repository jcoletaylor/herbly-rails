# frozen_string_literal: true

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
class FormulaModificationSet < ApplicationRecord
  belongs_to :formula

  validates :purpose, presence: true

  has_many :formula_modifications
  has_many :herbs, through: :formula_modifications
end
