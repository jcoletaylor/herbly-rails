# frozen_string_literal: true

# == Schema Information
#
# Table name: formulas
#
#  id             :bigint           not null, primary key
#  common_english :string
#  english        :string
#  hanzi          :string
#  name           :string           not null
#  pinyin         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_formulas_on_common_english  (common_english)
#  index_formulas_on_english         (english)
#  index_formulas_on_hanzi           (hanzi)
#  index_formulas_on_name            (name)
#  index_formulas_on_pinyin          (pinyin)
#
class Formula < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :formula_also_knowns
  has_many :formula_herbs
  has_many :herbs, through: :formula_herbs
  has_many :formula_herb_actions, through: :formula_herbs
  has_many :formula_actions
  has_many :formula_named_actions, through: :formula_actions
  has_many :formula_syndromes
  has_many :syndromes, through: :formula_syndromes
  has_many :formula_conditions
  has_many :conditions, through: :formula_conditions
  has_many :formula_contraindications
  has_many :formula_interactions
  has_many :formula_notes
  has_one :formula_manifestation
  has_many :formula_manifestation_symptoms, through: :formula_manifestation
  has_many :symptoms, through: :formula_manifestation_symptoms
  has_many :formula_modification_sets
  has_many :formula_modifications, through: :formula_modification_sets
end
