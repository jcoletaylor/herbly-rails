# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_dosages
#
#  id                  :bigint           not null, primary key
#  dosage              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  herb_dosage_type_id :bigint           not null
#  herb_id             :bigint           not null
#
# Indexes
#
#  index_herb_dosages_on_herb_dosage_type_id  (herb_dosage_type_id)
#  index_herb_dosages_on_herb_id              (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_dosage_type_id => herb_dosage_types.id)
#  fk_rails_...  (herb_id => herbs.id)
#
class HerbDosage < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_dosage_type

  validates :dosage, presence: true

  def dosage_type
    herb_dosage_type.name
  end
end
