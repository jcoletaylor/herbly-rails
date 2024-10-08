# frozen_string_literal: true

# == Schema Information
#
# Table name: formula_notes
#
#  id         :bigint           not null, primary key
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  formula_id :bigint           not null
#
# Indexes
#
#  index_formula_notes_on_formula_id  (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#
class FormulaNote < ApplicationRecord
  belongs_to :formula

  validates :note, presence: true
end
