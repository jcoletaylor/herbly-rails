class FormulaManifestation < ApplicationRecord
  belongs_to :formula

  validates :formula, presence: true
end
