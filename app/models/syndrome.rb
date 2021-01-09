class Syndrome < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
