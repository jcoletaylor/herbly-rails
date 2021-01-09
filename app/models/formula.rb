class Formula < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
