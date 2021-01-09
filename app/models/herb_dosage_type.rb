class HerbDosageType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
