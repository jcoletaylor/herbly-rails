# frozen_string_literal: true

# == Schema Information
#
# Table name: herbs
#
#  id               :bigint           not null, primary key
#  common_english   :string
#  hanzi            :string
#  latin            :string
#  name             :string           not null
#  pharm_latin      :string
#  pinyin           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  herb_category_id :bigint           not null
#
# Indexes
#
#  index_herbs_on_common_english    (common_english)
#  index_herbs_on_hanzi             (hanzi)
#  index_herbs_on_herb_category_id  (herb_category_id)
#  index_herbs_on_latin             (latin)
#  index_herbs_on_name              (name)
#  index_herbs_on_pharm_latin       (pharm_latin)
#  index_herbs_on_pinyin            (pinyin)
#
# Foreign Keys
#
#  fk_rails_...  (herb_category_id => herb_categories.id)
#
class Herb < ApplicationRecord
  belongs_to :herb_category
  has_many :herb_properties
  has_many :herb_dosages
  has_many :herb_actions
  has_many :herb_action_types, through: :herb_actions
  has_many :herb_warnings
  has_many :herb_warning_types, through: :herb_warnings
  has_many :herb_notes
  has_many :herb_combination_herbs
  has_many :herb_combinations, through: :herb_combination_herbs

  validates :name, presence: true, uniqueness: true
  validates :herb_category, presence: true
end
