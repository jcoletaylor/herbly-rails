class HerbWarningType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
