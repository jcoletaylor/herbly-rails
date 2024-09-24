# frozen_string_literal: true

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
class FormulaSyndrome < ApplicationRecord
  belongs_to :formula
  belongs_to :syndrome

  delegate :name, to: :syndrome, prefix: true
end
