class HerbPropertyType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
