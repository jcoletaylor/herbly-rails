# frozen_string_literal: true

# == Schema Information
#
# Table name: conditions
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_conditions_on_name      (name)
#  index_conditions_on_name_gin  (name) USING gin
#
class Condition < ApplicationRecord
  has_many :formula_conditions
  has_many :formulas, through: :formula_conditions

  validates :name, presence: true, uniqueness: true
end
