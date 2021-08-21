# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_combinations
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_herb_combinations_on_description  (description) UNIQUE
#
class HerbCombination < ApplicationRecord
  validates :description, presence: true, uniqueness: true
  has_many :herb_combination_herbs
  has_many :herbs, through: :herb_combination_herbs
  has_many :herb_combination_use_cases
end
