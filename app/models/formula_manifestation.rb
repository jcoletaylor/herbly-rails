# frozen_string_literal: true

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
class FormulaManifestation < ApplicationRecord
  belongs_to :formula

  has_many :formula_manifestation_symptoms
  has_many :symptoms, through: :formula_manifestation_symptoms
end
