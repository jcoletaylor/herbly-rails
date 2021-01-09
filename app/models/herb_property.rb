class HerbProperty < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_property_type
  belongs_to :precedence_type

  validates :herb, presence: true
  validates :herb_property_type, presence: true
  validates :precedence_type, presence: true
  validates :property, presence: true
end
