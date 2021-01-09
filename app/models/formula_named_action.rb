class FormulaNamedAction < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
