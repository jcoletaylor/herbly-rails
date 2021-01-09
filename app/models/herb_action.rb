class HerbAction < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_action_type

  validates :herb, presence: true
  validates :herb_action_type, presence: true
end
