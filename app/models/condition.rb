class Condition < ApplicationRecord
    has_many :formula_conditions
    has_many :formulas, through: :formula_conditions

    validates :name, presence: true, uniqueness: true
end
