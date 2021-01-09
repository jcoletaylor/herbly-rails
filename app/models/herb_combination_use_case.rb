class HerbCombinationUseCase < ApplicationRecord
  belongs_to :herb_combination

  validates :herb_combination, presence: true
  validates :use_case, presence: true
end
