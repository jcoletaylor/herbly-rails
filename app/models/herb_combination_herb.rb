class HerbCombinationHerb < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_combination

  validates :herb, presence: true
  validates :herb_combination, presence: true
end
