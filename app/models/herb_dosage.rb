class HerbDosage < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_dosage_type

  validates :herb, presence: true
  validates :herb_dosage_type, presence: true
  validates :dosage, presence: true

  def dosage_type
    herb_dosage_type.name
  end
end
