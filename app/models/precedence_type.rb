class PrecedenceType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
