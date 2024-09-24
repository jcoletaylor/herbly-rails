# frozen_string_literal: true

# == Schema Information
#
# Table name: formulas
#
#  id             :bigint           not null, primary key
#  common_english :string
#  document       :text
#  embedding      :vector(1536)
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
  vectorsearch

  before_save :build_document
  after_save :upsert_to_vectorsearch

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

  def as_vector
    to_json({ name:, pinyin:, english:, common_english:, hanzi:, document: })
  end

  def build_document
    self.document = FormulaDocumentGenerator.new(self).generate
  end
end
