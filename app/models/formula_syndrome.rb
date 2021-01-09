class FormulaSyndrome < ApplicationRecord
  belongs_to :formula
  belongs_to :syndrome

  validates :formula, presence: true
  validates :syndrome, presence: true
end
