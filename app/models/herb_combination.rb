class HerbCombination < ApplicationRecord
    validates :description, presence: true, uniqueness: true
end
