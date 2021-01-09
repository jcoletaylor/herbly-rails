class Symptom < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
