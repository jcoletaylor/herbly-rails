class HerbCategory < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
